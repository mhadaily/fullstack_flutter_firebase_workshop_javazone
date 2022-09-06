import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';
import * as fs from 'fs';
import * as os from 'os';
import * as path from 'path';
import * as PDFDocument from 'pdfkit';
import * as QRCode from 'qrcode';
import { Ticket } from './interfaces/ticket';
import { cors } from './utils';

const HEADING_FONT = 'CaesarDressing-Regular.ttf';
const BODY_FONT = 'Poppins-Regular.ttf';

export const generateBadge = functions
  .region('europe-west3')
  .https.onRequest((request: any, response: any) => {
    cors(request, response, async () => {
      const body: { ticket: Ticket } = JSON.parse(request.body);
      const { ticket } = body;
      const participant: any = ticket;

      if (!ticket) {
        response.sendStatus(400);
        return;
      }

      try {
        const outputFilePath = path.join(
          os.tmpdir(),
          `${ticket.reference}.pdf`
        );
        // Create a document
        const doc = new PDFDocument({
          size: [2976, 4198],
          autoFirstPage: false,
        });

        doc.pipe(fs.createWriteStream(outputFilePath));
        doc.addPage();

        const image = path.join('./badges_background.jpeg');

        const height = doc.page.height;
        const width = doc.page.width;
        const maxWidth = doc.page.width - 700;
        const margin = 10;

        doc.image(image, 0, 0, {
          height,
          width,
        });

        // First name
        doc.font(BODY_FONT).fontSize(200).fillColor('#000');
        if (doc.widthOfString(participant.name) > maxWidth) {
          doc.fontSize(150);
          if (doc.widthOfString(participant.name) > maxWidth) {
            doc.fontSize(100);
          }
        }

        doc.text(participant.name, margin, 1300, {
          align: 'center',
          height,
          width,
        });

        doc.font(HEADING_FONT).fontSize(60).fillColor('#055799');
        const company = participant.company_name;
        if (company) {
          doc.font(BODY_FONT).fontSize(80).fillColor('#055799');
          if (doc.widthOfString(company) > maxWidth) {
            doc.fontSize(60);
            if (doc.widthOfString(company) > maxWidth) {
              doc.fontSize(40);
            }
          }
          doc.text(company, margin, 1600, {
            align: 'center',
            height,
            width,
          });
        }

        const qrCode = await QRCode.toDataURL(participant.reference);
        doc.image(qrCode, 1270, 2400, {
          fit: [450, 450],
          align: 'center',
          valign: 'center',
        });
        doc.font(BODY_FONT).fontSize(60).fillColor('#000');
        doc.text(participant.reference, margin, 2820, {
          align: 'center',
          height,
          width,
        });

        const type = 'Attendee';
        const color = '#000';
        doc.font(HEADING_FONT).fontSize(300).fillColor(color);
        doc.text(type, margin, 1850, {
          align: 'center',
          height,
          width,
        });

        doc.end();

        const badgeFileName = `badges/${ticket.slug}.pdf`;
        const bucket = admin.storage().bucket();
        try {
          await bucket.file(badgeFileName).delete();
        } catch (e) {
          console.log('TheFileDoesntExist');
        }
        // always make sure we reupload new file
        const uploadRef = await admin
          .storage()
          .bucket()
          .upload(outputFilePath, {
            destination: badgeFileName,
            metadata: { contentType: 'application/pdf' },
            public: true,
          });
        const fileUrl = uploadRef[0].publicUrl();
        response.json({
          url: fileUrl,
        });
        fs.unlinkSync(outputFilePath);
      } catch (e) {
        console.error(JSON.stringify(e));
        response.sendStatus(500);
      }
    });
  });
