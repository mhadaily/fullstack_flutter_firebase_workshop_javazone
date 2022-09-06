import axios from 'axios';
import * as functions from 'firebase-functions';
import { cors } from './utils';

const axiosInstance = axios.create({
  baseURL: `https://api.tito.io/v3/${process.env.TITO_ACCOUNT}/${process.env.TITO_EVENT}`,
  headers: {
    Authorization: `Token token=${process.env.TITO_API_SECRET}`,
  },
});

export const searchTicket = functions
  .region('europe-west3')
  .https.onRequest((request, response) => {
    try {
      cors(request, response, async () => {
        const { q } = request.query;

        functions.logger.info('query', q);

        if (!q) {
          response.sendStatus(400);
          return;
        }

        const { data } = await axiosInstance.get(`/tickets?search[q]=${q}`);

        if (data && data.tickets && data.tickets.length) {
          functions.logger.info(data.tickets);

          // Filter out the tickets that contains an exact
          // match of the search query.
          functions.logger.debug(`Found ${data.tickets.length} tickets`);

          const filteredTickets = [];

          for (const ticket of data.tickets) {
            if (ticket.reference === q || ticket.email === q) {
              filteredTickets.push(ticket);
            }
          }

          response.send(filteredTickets);
          return;
        }

        response.sendStatus(404);
      });
    } catch (e) {
      functions.logger.error(JSON.stringify(e));
      response.sendStatus(500);
    }
  });

export const getTicket = functions
  .region('europe-west3')
  .https.onRequest((request, response) => {
    cors(request, response, async () => {
      const { slug } = request.query;

      if (!slug) {
        response.sendStatus(400);
        return;
      }
      try {
        const { data } = await axiosInstance.get(`/tickets/${slug}`);

        if (data && data.ticket) {
          response.json(data.ticket);
          return;
        }

        response.sendStatus(404);
      } catch (e) {
        console.error(e);
        response.sendStatus(500);
      }
    });
  });
