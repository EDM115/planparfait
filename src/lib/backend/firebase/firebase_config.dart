import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAT4paI9IWU8Dmr4mmFeuiyHNH-jfHxxxx",
            authDomain: "plan-parfait-069miz.firebaseapp.com",
            projectId: "plan-parfait-069miz",
            storageBucket: "plan-parfait-069miz.appspot.com",
            messagingSenderId: "95740220xxxx",
            appId: "1:95740220xxxx:web:b1a40f92fbc7b1b635xxxx",
            measurementId: "G-XNNNL1XXXX"));
  } else {
    await Firebase.initializeApp();
  }
}
