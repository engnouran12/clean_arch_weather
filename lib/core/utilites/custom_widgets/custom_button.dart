import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  const custombutton({
    super.key, this.onPressed, this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child:  Text(text!));
  }
}
