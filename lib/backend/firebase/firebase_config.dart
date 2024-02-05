import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCw2laifaihLsBFBMDXJu5HlgSmMxBb_10",
            authDomain: "pinagem-de-e-c-u-4zjhv7.firebaseapp.com",
            projectId: "pinagem-de-e-c-u-4zjhv7",
            storageBucket: "pinagem-de-e-c-u-4zjhv7.appspot.com",
            messagingSenderId: "134790951569",
            appId: "1:134790951569:web:9b85f3b8e3c5f1cfbcc530"));
  } else {
    await Firebase.initializeApp();
  }
}
