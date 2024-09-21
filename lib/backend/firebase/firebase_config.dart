import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBENAUbnMICGCVM6nhVP6BwM7EUHf6gQtE",
            authDomain: "sawwah-y37evl.firebaseapp.com",
            projectId: "sawwah-y37evl",
            storageBucket: "sawwah-y37evl.appspot.com",
            messagingSenderId: "140857082904",
            appId: "1:140857082904:web:acd1d5e63d5f4700d0ef6d"));
  } else {
    await Firebase.initializeApp();
  }
}
