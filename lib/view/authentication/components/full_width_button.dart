import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  const FullWidthButton({
    super.key,
    required this.onPressed,
    required this.labelText
  });

  final Function()? onPressed;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: FilledButton(
          style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Colors.black),
              shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
              ),
          ),
          onPressed: onPressed,
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Text(
                labelText,
                style: const TextStyle(
                    fontSize: 24
                ),
              ),
            ),
          )
      ),
    );
  }
}
