import 'package:gallery/helper/api.dart';
import 'package:gallery/presentation/screens/login/data/login_model.dart';

class Login {
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> loginData = await Api().post(
      url: 'https://flutter.prominaagency.com/api/auth/login',
      body: {
        'email': email,
        'password':password,
      },
    );
    return LoginModel.fromJson(loginData);
  }
}
