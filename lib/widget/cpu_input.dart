import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rock_paper_scissors/controller/game_controller.dart';
import 'package:rock_paper_scissors/entity/const.dart';
import 'package:rock_paper_scissors/widget/game_widget.dart';

class CpuInput extends StatelessWidget {
  const CpuInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: GameCardButton(child: Image.asset(getCpuImage())));
    });
  }

  String getCpuImage() {
    if (GameController.to.state != GameBoardState.done) {
      return 'assets/images/question-mark3.png';
    } else {
      return GameController.to.computerSelection.path;
    }
  }
}
