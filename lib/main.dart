import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
        // GetMaterialApp(
    //   title: "Application",
    //   initialRoute: Routes.SPLASH ,
    //   getPages: AppPages.routes,
    // ),
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return  GetMaterialApp(
      title: "Application",
      initialRoute: Routes.SPLASH ,
      getPages: AppPages.routes,
    );
      },

    );
  }
}
