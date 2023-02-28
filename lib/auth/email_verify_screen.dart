import 'package:capstone_automation/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class EmailVerifyScreen extends StatelessWidget {
  const EmailVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final loginController = LoginController();
    return Obx(
      () => Form(
        key: _formKey,
        child: Container(
          color: const Color(0xff2F4865),
          child: Center(
            child: Card(
              color: const Color(0xFFffffff),
              shape: RoundedRectangleBorder(
                //side: const BorderSide(color: Color.fromARGB(255, 29, 255, 37)),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: 400,
                height: 400,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: loginController.emailConroller,
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff2F4865),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: loginController.passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 70),
                    //create a rounded button
                    !loginController.emailVerifySession.value
                        ? SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                //loginController.emailVerifySession.value = true;
                                if (_formKey.currentState!.validate()) {
                                  loginController.registerUser();
                                } else {
                                  //display a snackbar with error mesage
                                  Get.snackbar(
                                    'Error',
                                    'Please enter your email and password',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                  );
                                }
                                // Get.to(
                                //   const EmailVerifyScreen(),
                                //   transition: Transition.rightToLeft,
                                // );
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          )
                        //display a simple animation and show the text to verify the email
                        : Column(
                            children: const [
                              SizedBox(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: primaryColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Please verify your email...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
