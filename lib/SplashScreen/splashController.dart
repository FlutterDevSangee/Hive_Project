import 'package:get/get.dart';
import 'package:hiveapp/Hivescreen/hivescreen.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  navToNextPage() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offAll(() => HiveScreen(), transition: Transition.circularReveal);
    });
    update();
  }
}
