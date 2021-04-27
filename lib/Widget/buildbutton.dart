import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onclicked;

  const ButtonWidget({Key key, @required this.text, @required this.onclicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          onPrimary: Colors.white),
      child: Text(text),
      onPressed: onclicked,
    );
  }
}
