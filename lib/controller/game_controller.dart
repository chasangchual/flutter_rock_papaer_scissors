import 'dart:math';

import 'package:get/get.dart';
import 'package:rock_paper_scissors/entity/const.dart';
import 'package:rock_paper_scissors/log.dart';

class GameController extends GetxController {
  static GameController get to => Get.find();

  final _state = GameBoardState.ready.obs;
  final _computerSelection = Selection.paper.obs;
  final _userSelection = Selection.paper.obs;
  final _gameResult = GameWinner.tie.obs;

  @override
  void onInit() {
    super.onInit();
    _state.value = GameBoardState.ready;
  }

  void startGame() {
    _state.value = GameBoardState.start;
    Log.s.d('start Rock Paper Scissors game !!');
  }

  void setUserSelection(Selection selected) {
    _state.value = GameBoardState.start;
    _userSelection.value = selected;
    Log.s.d('user selected $selected');
    _beginComputerThink();
  }

  void _beginComputerThink() {
    _state.value = GameBoardState.thinking;
    _computerSelection.value = Selection.values[Random().nextInt(3)];
    Log.s.d('computer selected ${_computerSelection.value}');

    _finish();
  }

  void _finish() {
    _state.value = GameBoardState.done;
    if (_computerSelection.value == _userSelection.value) {
      _gameResult.value = GameWinner.tie;
    } else {
      if (_userSelection.value == Selection.rock) {
        if (_computerSelection.value == Selection.paper) {
          _gameResult.value = GameWinner.computer;
        } else {
          _gameResult.value = GameWinner.user;
        }
      }

      if (_userSelection.value == Selection.paper) {
        if (_computerSelection.value == Selection.scissors) {
          _gameResult.value = GameWinner.computer;
        } else {
          _gameResult.value = GameWinner.user;
        }
      }

      if (_userSelection.value == Selection.scissors) {
        if (_computerSelection.value == Selection.rock) {
          _gameResult.value = GameWinner.computer;
        } else {
          _gameResult.value = GameWinner.user;
        }
      }
    }

    Log.s.d('game result ${_gameResult.value == GameWinner.tie ? "tie" : _gameResult.value}');
  }

  Selection get computerSelection => _computerSelection.value;

  Selection get userSelection => _userSelection.value;

  GameBoardState get state => _state.value;

  GameWinner get result => _gameResult.value;
}
