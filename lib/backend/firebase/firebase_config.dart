import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBgJIo2-X5PwFcAFUel5lx40-Ubdzcgnn8",
            authDomain: "vatten-9c2d7.firebaseapp.com",
            projectId: "vatten-9c2d7",
            storageBucket: "vatten-9c2d7.appspot.com",
            messagingSenderId: "588328145245",
            appId: "1:588328145245:web:1ecc2bf6fa329fcad1d8b4",
            measurementId: "G-9WR7K1R1V3"));
  } else {
    await Firebase.initializeApp();
  }
}
