import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

Future<ChatsRecord?> createOrUpdateChatDoc(
  BuildContext context, {
  required DocumentReference? experienceRef,
}) async {
  ChatsRecord? charRecord;
  ChatsRecord? createdChat;

  charRecord = await queryChatsRecordOnce(
    queryBuilder: (chatsRecord) => chatsRecord.where(
      'experience_id',
      isEqualTo: experienceRef,
    ),
    singleRecord: true,
  ).then((s) => s.firstOrNull);
  if (charRecord != null) {
    if (charRecord.users
            .where((e) => e == currentUserReference)
            .toList().isEmpty) {
      await charRecord.reference.update({
        ...mapToFirestore(
          {
            'users': FieldValue.arrayUnion([currentUserReference]),
          },
        ),
      });
    }
    return charRecord;
  } else {
    var chatsRecordReference = ChatsRecord.collection.doc();
    await chatsRecordReference.set({
      ...createChatsRecordData(
        experienceId: experienceRef,
      ),
      ...mapToFirestore(
        {
          'users': [currentUserReference],
        },
      ),
    });
    createdChat = ChatsRecord.getDocumentFromData({
      ...createChatsRecordData(
        experienceId: experienceRef,
      ),
      ...mapToFirestore(
        {
          'users': [currentUserReference],
        },
      ),
    }, chatsRecordReference);
    return createdChat;
  }
}
