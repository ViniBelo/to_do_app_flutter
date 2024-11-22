import 'package:to_do_app_flutter/data/model/authentication/sign_in_req_params.dart';
import 'package:to_do_app_flutter/data/model/authentication/sign_up_req_params.dart';
import 'package:to_do_app_flutter/services/authentication/authentication_service.dart';
import 'package:dio/dio.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  final String baseUrl = const String.fromEnvironment("API_ADDRESS");
  final dio = Dio();

  @override
  void signUp(SignUpReqParams signUpReqParams) async {
    final Response response = await dio.post(
      "$baseUrl/users/signup",
      data: signUpReqParams.toMap()
    );
    print(response);
  }

  @override
  void signIn(SignInReqParams signInReqParams) async {
    final Response response = await dio.post(
        "$baseUrl/users/login",
        data: signInReqParams.toMap()
    );
    print(response.headers['Authorization']);
  }
}