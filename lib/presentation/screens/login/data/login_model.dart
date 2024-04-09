class LoginModel {
  final int id;
  final String name;
  final String email;

  LoginModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory LoginModel.fromJson(json) {
    return LoginModel(
      id: json['user']['id'],
      name: json['user']['name'],
      email: json['user']['email'],
    );
  }
}
