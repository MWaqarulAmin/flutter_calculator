import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final dynamic color;
  final dynamic textColor;
  final String buttonText;
  final dynamic buttonTapped;

  const MyButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonText,
      required this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 5, // This adds shadow
          borderRadius: BorderRadius.circular(20),
          color: color, // Button color
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
