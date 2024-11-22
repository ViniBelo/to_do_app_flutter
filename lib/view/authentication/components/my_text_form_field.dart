import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 12,
          bottom: 12
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          iconColor: Colors.black,
          border: const OutlineInputBorder(),
        ),
        style: const TextStyle(
          fontSize: 24,
        ),
        maxLines: 1,
      ),
    );
  }
}
