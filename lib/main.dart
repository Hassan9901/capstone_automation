import 'package:capstone_automation/auth/email_verify_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "Capstone Automation",
    options: const FirebaseOptions(
      apiKey: "AIzaSyB7vVd3bmNvYpBgk1NDe54f5XRge_91sss",
      appId: "1:139858468612:web:2043488c1d40d064587a51",
      messagingSenderId: "139858468612",
      projectId: "capstone-automation",
      //databaseURL: "https://capstone-automation.firebaseio.com",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff2F4865),
        body: EmailVerifyScreen(),
      ),
    );
  }
}
