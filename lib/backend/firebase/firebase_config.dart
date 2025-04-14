import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDuykspJX0Dzzt93f6dHITwMpevED8APek",
            authDomain: "rent-ease-5tgfoq.firebaseapp.com",
            projectId: "rent-ease-5tgfoq",
            storageBucket: "rent-ease-5tgfoq.firebasestorage.app",
            messagingSenderId: "876303566916",
            appId: "1:876303566916:web:9325fc07b015da25505411",
            measurementId: "G-2CTR03KG03"));
  } else {
    await Firebase.initializeApp();
  }
}
