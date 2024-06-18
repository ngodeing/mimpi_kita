import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsFj0ojGc1l8x3KxDh6oViWZPo269ObfM",
            authDomain: "project-mimpi-kita-kzqczv.firebaseapp.com",
            projectId: "project-mimpi-kita-kzqczv",
            storageBucket: "project-mimpi-kita-kzqczv.appspot.com",
            messagingSenderId: "730002779539",
            appId: "1:730002779539:web:59e7ec1cc8e1321877cc66"));
  } else {
    await Firebase.initializeApp();
  }
}
