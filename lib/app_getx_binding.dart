import 'package:get/get.dart';
import 'package:rock_paper_scissors/controller/game_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GameController());
  }
}
