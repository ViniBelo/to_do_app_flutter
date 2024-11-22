import 'package:to_do_app_flutter/data/model/sign_up_req_params.dart';

abstract class AuthenticationService {
  void signUp(SignUpReqParams signUpReqParams);
}