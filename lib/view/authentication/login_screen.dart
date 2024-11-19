import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/view/authentication/components/login_form_field.dart';
import 'package:to_do_app_flutter/view/authentication/components/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  onSignUpPressed() {
    
  }

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
                padding: EdgeInsets.only(top: 100, bottom: 100),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? Sign Up "),
                  Text(
                    "here",
                    style: TextStyle(
                      color: Colors.blueAccent
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
