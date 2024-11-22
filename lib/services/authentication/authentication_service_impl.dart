import 'package:to_do_app_flutter/data/model/sign_up_req_params.dart';
import 'package:to_do_app_flutter/services/authentication/authentication_service.dart';
import 'package:dio/dio.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  final String baseUrl = const String.fromEnvironment("API_ADDRESS");
  final dio = Dio();

  @override
  void signUp(SignUpReqParams signUpReqParams) async {
    Response response;
    response = await dio.post(
      "$baseUrl/users/signup",
      data: signUpReqParams.toMap()
    );
    print(response);
  }
}