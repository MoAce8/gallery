import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/login/widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'My',
                  style: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Gallery',
                  style: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenHeight(context) * .04,
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
