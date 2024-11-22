class SignUpReqParams {
  final String email;
  final String password;
  final String repeatPassword;

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      "user": {
        "email": email,
        "password": password,
        "password_confirmation": repeatPassword,
      }
    };
  }

  SignUpReqParams({
    required this.email,
    required this.password,
    required this.repeatPassword
  });
}