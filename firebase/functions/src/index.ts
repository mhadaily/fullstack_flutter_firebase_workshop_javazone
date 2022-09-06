import * as admin from 'firebase-admin';

admin.initializeApp({
  serviceAccountId: process.env.SERVICE_ACCOUNT,
  storageBucket: process.env.BUCKET_NAME,
});

import {
  roomsToFirestore,
  sessionsToFirestore,
  speakersToFirestore,
  sponsorsToFirestore,
} from './api_to_firestore';
import {
  cleanupAfterSessionsDeletion,
  rescheduleSessionReminders,
  scheduleSessionReminders,
} from './session_firestore_triggers';
import {
  sendSessionTenMinsReminder,
  sessionGone,
  sessionStartedReminder,
} from './session_task_triggers';

import { generateBadge } from './badge_api';
import { getTicket, searchTicket } from './tito_tickets';

export {
  cleanupAfterSessionsDeletion,
  rescheduleSessionReminders,
  scheduleSessionReminders,
  sendSessionTenMinsReminder,
  sessionStartedReminder,
  sessionsToFirestore,
  speakersToFirestore,
  sponsorsToFirestore,
  sessionGone,
  searchTicket,
  generateBadge,
  getTicket,
  roomsToFirestore,
};
