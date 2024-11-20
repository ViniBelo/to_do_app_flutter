import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/view/authentication/components/my_text_form_field.dart';
import 'package:to_do_app_flutter/view/authentication/components/full_width_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  onSignInPressed() { }

  @override
  Widget build(BuildContext context) {
    onSignUpPressed() {
      Navigator.pushNamed(
          context,
          '/signUp'
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 100),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 48
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
                onPressed: onSignInPressed,
                labelText: "Sign In",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? Sign Up "),
                  GestureDetector(
                    onTap: onSignUpPressed,
                    child: const Text(
                      "here",
                      style: TextStyle(
                        color: Colors.blueAccent
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
