import 'package:gallery/helper/api.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/login/data/login_model.dart';

class LoginServices {
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> loginData = await Api().post(
      url: '$baseUrl/auth/login',
      body: {
        'email': email,
        'password':password,
      },
    );
    return LoginModel.fromJson(loginData);
  }
}
