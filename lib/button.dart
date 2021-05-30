import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    @required this.text,
    @required this.onPressed,
  });

  final Text text;
  final Function onPressed;
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      highlightColor: Colors.white,
      elevation: 0.0,
      child: text,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 30.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.teal,
    );
  }
}
