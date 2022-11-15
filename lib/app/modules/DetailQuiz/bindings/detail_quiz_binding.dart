import 'package:get/get.dart';

import '../controllers/detail_quiz_controller.dart';

class DetailQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailQuizController>(
      () => DetailQuizController(),
    );
  }
}
