import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rock_paper_scissors/app_getx_binding.dart';
import 'package:rock_paper_scissors/widget/cpu_input.dart';
import 'package:rock_paper_scissors/widget/game_result.dart';
import 'package:rock_paper_scissors/widget/use_input.dart';

void main() {
  runApp(RockPaperScissorsApp());
}

class RockPaperScissorsApp extends StatelessWidget {
  const RockPaperScissorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Rock Paper Scissors !!")),
        body: GameBody(),
      ),
      initialBinding: AppBinding(),
    );
  }
}

class GameBody extends StatelessWidget {
  const GameBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Flexible(child: CpuInput()), Flexible(child: GameResult()), Flexible(child: UserInput())],
    );
  }
}
