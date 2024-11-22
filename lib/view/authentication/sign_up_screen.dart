import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/data/model/sign_up_req_params.dart';
import 'package:to_do_app_flutter/services/authentication/authentication_service_impl.dart';
import 'package:to_do_app_flutter/view/authentication/components/full_width_button.dart';
import 'package:to_do_app_flutter/view/authentication/components/my_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();

  onSignUpPressed() {
    final SignUpReqParams signUpReqParams = SignUpReqParams(
      email: emailController.text,
      password: passwordController.text,
      repeatPassword: repeatPasswordController.text
    );
    AuthenticationServiceImpl().signUp(signUpReqParams);
  }

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
              MyTextFormField(
                controller: emailController,
                labelText: "Email",
                prefixIcon: const Icon(Icons.email_sharp),
              ),
              MyTextFormField(
                controller: passwordController,
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
                obscureText: true,
              ),
              MyTextFormField(
                controller: repeatPasswordController,
                labelText: "Repeat Password",
                prefixIcon: const Icon(Icons.lock),
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
