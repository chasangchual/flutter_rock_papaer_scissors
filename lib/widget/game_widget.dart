import 'package:flutter/material.dart';

class GameCardButton extends StatelessWidget {
  late Image child;

  GameCardButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.grey, width: 8)),
      child: child,
    );
  }

  void setImage(Image image) {
    this.child = image;
  }
}
