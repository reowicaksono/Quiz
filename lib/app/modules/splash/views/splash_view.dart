import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_flutter/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg3.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(),
                  Center(
                    child: Container(
                      width: 220,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Get.offAllNamed(Routes.SIGN_IN),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                            side: BorderSide(color: Colors.black, width: 2.0),
                          ),
                        ),
                        child: Text(
                          'Get Started',
                          style: regularTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 20.h,),
                  Container(
                    width: 200.w,
                    height: 200.h,
                    child: Lottie.asset("assets/lottie/logo.json"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Quiz App',
                    style: regularTextStyle.copyWith(fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
