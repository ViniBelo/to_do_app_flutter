import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/data/model/authentication/sign_in_req_params.dart';
import 'package:to_do_app_flutter/services/authentication/authentication_service_impl.dart';
import 'package:to_do_app_flutter/view/authentication/components/my_text_form_field.dart';
import 'package:to_do_app_flutter/view/authentication/components/full_width_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  onSignInPressed() {
    final SignInReqParams signInReqParams = SignInReqParams(
      email: emailController.text,
      password: passwordController.text
    );
    AuthenticationServiceImpl().signIn(signInReqParams);
  }

  @override
  Widget build(BuildContext context) {
    onSignUpPressed() {
      Navigator.pushNamed(
          context,
          '/signUp'
      );
    }
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 100),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 48
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
