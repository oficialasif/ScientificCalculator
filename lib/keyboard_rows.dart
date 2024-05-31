import 'keyboard_buttons.dart';
import 'package:flutter/material.dart';

class KeyboardRows extends StatelessWidget {
  KeyboardRows({required this.rowsButtons, required this.onTap});

  final List<String> rowsButtons;
  final CallbackButtonTap onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons(), // Use the buttons() method to generate buttons
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

  List<Widget> buttons() {
    List<Widget> buttons = [];
    rowsButtons.forEach((String buttonText) {
      buttons.add(
        KeyboardButtons(
          buttons: [buttonText], // Wrap buttonText in a list
          onTap: onTap,
        ),
      );
    });
    return buttons;
  }
}
