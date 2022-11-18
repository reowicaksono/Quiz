import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //Login
  void signIn(String emailAddress, String password) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: emailAddress, password: password)
          .then((user) {
        Get.offAllNamed(Routes.HOME);
      }).catchError((e) {
        Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
      });
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
