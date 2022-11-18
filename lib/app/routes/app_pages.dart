import 'package:get/get.dart';

import '../modules/DetailQuiz/bindings/detail_quiz_binding.dart';
import '../modules/DetailQuiz/views/detail_quiz_view.dart';
import '../modules/DetailScreen/bindings/detail_screen_binding.dart';
import '../modules/DetailScreen/views/detail_screen_view.dart';
import '../modules/MenuScreen/bindings/menu_screen_binding.dart';
import '../modules/MenuScreen/views/menu_screen_view.dart';
import '../modules/ResultPage/bindings/result_page_binding.dart';
import '../modules/ResultPage/views/result_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MENU_SCREEN,
      page: () => const MenuScreenView(),
      binding: MenuScreenBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_QUIZ,
      page: () => const DetailQuizView(),
      binding: DetailQuizBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SCREEN,
      page: () => const DetailScreenView(),
      binding: DetailScreenBinding(),
    ),
    GetPage(
      name: _Paths.RESULT_PAGE,
      page: () => const ResultPageView(),
      binding: ResultPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
