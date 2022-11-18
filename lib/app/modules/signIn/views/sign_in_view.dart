import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_flutter/app/controllers/auth_controller.dart';
import 'package:quiz_flutter/app/routes/app_pages.dart';
import 'package:quiz_flutter/theme.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final auth = Get.put(AuthController());
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 240, 240),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - (edge * 5),
                child:
                    Lottie.asset('assets/lottie/logo.json', fit: BoxFit.fill),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Quiz",
                  style: regularTextStyle.copyWith(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign in to your account",
                  style: regularTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                controller: controller.emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  labelText: "Email",
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => TextField(
                  textAlign: TextAlign.center,
                  obscureText: controller.isActive.value,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => controller.changeActive(),
                        icon: Icon(Icons.remove_red_eye)),
                    fillColor: Colors.white,
                    labelText: "Password",
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: regularTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 13, 97, 165),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          textStyle: TextStyle(color: Colors.white)),
                      onPressed: () {
                        auth.signIn(controller.emailController.text,
                            controller.passwordController.text);
                      },
                      child: Text('Signin'))),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Or continue with",
                  style: regularTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/google.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/facebook.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'assets/images/apple.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //Don't have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: regularTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed((Routes.HOME));
                    },
                    child: Text(
                      "Signup",
                      style: regularTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        )));
  }
}
