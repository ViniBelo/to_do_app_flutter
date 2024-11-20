import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/view/authentication/components/full_width_button.dart';
import 'package:to_do_app_flutter/view/authentication/components/my_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  onSignUpPressed() { }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 100),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 48,
                  ),
                ),
              ),
              const MyTextFormField(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_sharp),
              ),
              const MyTextFormField(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                obscureText: true,
              ),
              FullWidthButton(
                onPressed: onSignUpPressed,
                labelText: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
