import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/view/login/components/login_form_field.dart';
import 'package:to_do_app_flutter/view/login/components/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  onSignInPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 60),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 48
                  ),
                ),
              ),
              const LoginFormField(
                labelText: "Email",
                prefixIcon: Icon(Icons.email_sharp),
              ),
              const LoginFormField(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                obscureText: true,
              ),
              SignInButton(
                onSignInPressed: onSignInPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
