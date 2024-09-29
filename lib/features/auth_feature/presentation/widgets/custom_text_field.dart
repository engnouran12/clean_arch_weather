import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labeltext;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool? isPassword;
  final Function validator;
  const CustomTextField({
    super.key,
    required this.labeltext,
    required this.controller,
    required this.keyboardType,
     this.isPassword,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword!,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator(),
      decoration: InputDecoration(
          labelText: labeltext, border: const OutlineInputBorder()),
    );
  }
}
