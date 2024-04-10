class LoginModel {
  final int id;
  final String name;
  final String email;
  final String token;

  LoginModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
  });

  factory LoginModel.fromJson(json) {
    return LoginModel(
      id: json['user']['id'],
      name: json['user']['name'],
      email: json['user']['email'],
      token: json['token'],
    );
  }
}
