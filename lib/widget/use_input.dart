import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/entity/const.dart';
import 'package:rock_paper_scissors/widget/user_game_input.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: _getUserInputs(),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }

  List<Widget> _getUserInputs() {
    return Selection.values.map((type) => UserGameInputCard(selectionType: type)).toList();
  }
}
