import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quiz_flutter/app/routes/app_pages.dart';

import '../../../../theme.dart';
import '../controllers/detail_screen_controller.dart';

class DetailScreenView extends GetView<DetailScreenController> {
  const DetailScreenView({Key? key}) : super(key: key);
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 180,
              left: 20,
              right: 20,
              bottom: 500,
              child: DottedBorder(
                color: Colors.black,
                dashPattern: [8, 4],
                strokeWidth: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 271,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: blackColor, width: 4.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: Text(
                      'What is the “6” planet \nin the solar system ?',
                      style: mediaumTextStyle.copyWith(fontSize: 27),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: -20,
              height: 150,
              width: 206,
              child: Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/q1.png',
                  width: 20,
                ),
              ),
            ),
            Positioned(
              top: 360,
              left: 330,
              height: 105,
              width: 106,
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/q2.png',
                  width: 20,
                ),
              ),
            ),
            Positioned(
              top: 480,
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  //border: Border.all(color: blackColor, width: 4.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRadioButton(
                      elevation: 3,
                      absoluteZeroSpacing: false,
                      unSelectedColor: Theme.of(context).canvasColor,
                      buttonLables: [
                        'Jupiter',
                        'Saturnus',
                        'Earth',
                      ],
                      buttonValues: [
                        "Jupiter",
                        "Saturnus",
                        "Earth",
                      ],
                      padding: 15,
                      enableShape: true,
                      horizontal: true,
                      spacing: 0,
                      buttonTextStyle: ButtonTextStyle(
                        selectedColor: Colors.white,
                        unSelectedColor: Colors.black,
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      radioButtonValue: (value) {
                        print(value);
                      },
                      selectedColor: Color(0xff7C3CFF),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => Get.toNamed(Routes.DETAIL_QUIZ) ,
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffFFC10F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                            child: Text(
                              'Back',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: whiteColor),
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () => Get.toNamed(Routes.RESULT_PAGE),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffFFC10F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                            child: Text(
                              'Next',
                              style: regularTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
