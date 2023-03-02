import 'package:capstone_automation/auth/email_verify_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "Capstone Automation",
    options: const FirebaseOptions(
      apiKey: "AIzaSyDMlTmyUDm5tnAqQY8nZSjs6Ytc8jf-y9w",
      appId: "1:463045968374:web:91d54e84e84687a6b747d7",
      messagingSenderId: "463045968374",
      projectId: "capstone-automation-8d638",
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
