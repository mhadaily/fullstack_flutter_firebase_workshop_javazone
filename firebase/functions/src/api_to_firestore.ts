import axios from 'axios';
import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';
import { Room } from './interfaces/room';
import { Session } from './interfaces/session';
import { Speaker } from './interfaces/speaker';
import { Sponsor } from './interfaces/sponsor';

/**
 * Get sessions and speakers from sessionize API.
 * @return {Promise<any>} The data extracted from
 * the response returned from the sessionize API.
 */
const getSessionizeData = async (): Promise<any> => {
  // First, get the sessionize data.
  const { data } = await axios.get(
    'https://sessionize.com/api/v2/8wk2u51q/view/All'
  );

  return data;
};

export const roomsToFirestore = functions
  .region('europe-west3')
  .https.onRequest(async (_, response) => {
    const data = await getSessionizeData();

    const roomsFirestore = await admin
      .firestore()
      .collection('rooms')
      .withConverter(genericConverter<Room>());

    data['rooms'].map(async (room: Room) => {
      functions.logger.debug(room.id);
      const roomsRef = roomsFirestore.doc(room.id.toString());
      await roomsRef.set(room);
      functions.logger.info(`🎉 Room added successfully: ${room.name}`);
    });

    response.sendStatus(200);
  });

export const speakersToFirestore = functions
  .region('europe-west3')
  .https.onRequest(async (_, response) => {
    const data = await getSessionizeData();

    const speakerFirestore = await admin
      .firestore()
      .collection('speakers')
      .withConverter(genericConverter<Speaker>());

    data['speakers'].map(async (speaker: Speaker) => {
      if (
        speaker.questionAnswers &&
        speaker.questionAnswers.length > 0 &&
        speaker.questionAnswers[0].questionId == 37750
      ) {
        speaker.links.push({
          title: 'GitHub',
          linkType: 'GitHub',
          url: speaker.questionAnswers[0].answerValue,
        });
      }

      if (speaker.questionAnswers) {
        delete speaker.questionAnswers;
      }

      const speakerRef = speakerFirestore.doc(speaker.id);
      await speakerRef.set(speaker);
      functions.logger.info(
        `🎉 Speaker added successfully: ${speaker.fullName}`
      );
    });

    response.sendStatus(200);
  });

export const sessionsToFirestore = functions
  .region('europe-west3')
  .https.onRequest(async (_, response) => {
    const data = await getSessionizeData();

    const sessionFirestore = await admin
      .firestore()
      .collection('sessions')
      .withConverter(genericConverter<Session>());

    data['sessions'].map(async (session: any) => {
      if (session && session.startsAt) {
        const startsAt = new Date(session.startsAt);
        session.startsAt = admin.firestore.Timestamp.fromDate(startsAt);
      }

      if (session && session.endsAt) {
        const endsAt = new Date(session.endsAt as string);
        session.endsAt = admin.firestore.Timestamp.fromDate(endsAt);
      }

      await sessionFirestore.doc(session.id).set(session, { merge: true });

      functions.logger.info(`🎉 Session added successfully: ${session.title}`);
    });

    response.sendStatus(200);
  });

export const sponsorsToFirestore = functions
  .region('europe-west3')
  .https.onRequest(async (_, response) => {
    const { data } = await axios.get(
      'https://fluttervikings.com/data/api/sponsors.json'
    );

    const sponsorFirestore = await admin
      .firestore()
      .collection('sponsors')
      .withConverter(genericConverter<Sponsor>());

    data.map(async (s: any) => {
      const sponsor: Sponsor = s;
      sponsor.id = s.sponsor_id;
      delete s.sponsor_id;

      if (!s.dark) {
        s.dark = sponsor.id;
      }

      sponsor.logo = {
        dark: s.dark
          ? `https://fluttervikings.com/data/images/sponsors/${s.dark}.png`
          : null,
        normal: `https://fluttervikings.com/data/images/sponsors/${sponsor.id}.png`,
      };

      delete s.dark;

      await sponsorFirestore.doc(sponsor.id).set(sponsor);

      functions.logger.info(`🎉 Sponsor added successfully: ${s.name}`);
    });

    response.sendStatus(200);
  });

const genericConverter = <T>() => ({
  toFirestore(data: Partial<T>) {
    return data;
  },
  fromFirestore(snapshot: FirebaseFirestore.QueryDocumentSnapshot): T {
    const data = snapshot.data();
    return data as T;
  },
});
