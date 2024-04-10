import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/presentation/screens/login/data/login_model.dart';
import 'package:gallery/services/login.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of<LoginCubit>(context);

late final String token;

  login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
     LoginModel data = await LoginServices().login(email: email, password: password);
      token = data.token;
    } catch (e) {
      emit(LoginFailed());
      print(e.toString());
    }
  }
}
