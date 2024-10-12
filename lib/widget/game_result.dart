import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rock_paper_scissors/controller/game_controller.dart';
import 'package:rock_paper_scissors/entity/const.dart';

class GameResult extends StatelessWidget {
  const GameResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              getWinnerString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              getResultString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });
  }

  String getResultString() {
    return switch (GameController.to.state) {
      GameBoardState.done => 'Again, select one: Rock, Paper, or Scissors!',
      _ => 'Please select one: Rock, Paper, or Scissors!'
    };
  }

  String getWinnerString() {
    if (GameController.to.state == GameBoardState.done) {
      return switch (GameController.to.result) {
        GameWinner.computer => 'Computer wins.',
        GameWinner.user => 'User wins.',
        _ => 'Tie'
      };
    } else {
      return "";
    }
  }
}
