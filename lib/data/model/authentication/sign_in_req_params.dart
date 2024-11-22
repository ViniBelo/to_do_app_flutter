class SignInReqParams {
  final String email;
  final String password;

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      "user": {
        "email": email,
        "password": password
      }
    };
  }

  SignInReqParams({
    required this.email,
    required this.password
  });
}