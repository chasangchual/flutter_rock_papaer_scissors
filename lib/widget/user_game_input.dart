import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/controller/game_controller.dart';
import 'package:rock_paper_scissors/entity/const.dart';
import 'package:rock_paper_scissors/widget/game_widget.dart';

class UserGameInputCard extends StatelessWidget {
  final Selection selectionType;

  const UserGameInputCard({required this.selectionType, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: UserGameInputCardContents(child: selectionType),
        onTap: () => GameController.to.setUserSelection(selectionType),
      ),
    );
  }
}

class UserGameInputCardContents extends StatelessWidget {
  const UserGameInputCardContents({
    super.key,
    required this.child,
  });

  final Selection child;

  @override
  Widget build(BuildContext context) {
    return GameCardButton(child: Image.asset(child.path));
  }
}
