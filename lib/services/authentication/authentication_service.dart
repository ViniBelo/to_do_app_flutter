import 'package:to_do_app_flutter/data/model/authentication/sign_in_req_params.dart';
import 'package:to_do_app_flutter/data/model/authentication/sign_up_req_params.dart';

abstract class AuthenticationService {
  void signUp(SignUpReqParams signUpReqParams);
  void signIn(SignInReqParams signInReqParams);
}