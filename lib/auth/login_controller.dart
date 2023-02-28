import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  final emailVerifySession = false.obs;
  final emailConroller = TextEditingController();
  final passwordController = TextEditingController();

  void registerUser() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailConroller.text, password: passwordController.text)
        .then((value) => print("User Registered"));
  }
}
