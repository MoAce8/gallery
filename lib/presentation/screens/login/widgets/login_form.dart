import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/gallery_screen.dart';
import 'package:gallery/presentation/widgets/app_button.dart';
import 'package:gallery/presentation/widgets/custom_text_form_field.dart';
import 'package:gallery/services/login.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * .07,
          vertical: screenHeight(context) * .05),
      width: screenWidth(context) * .85,
      color: Colors.white.withOpacity(.3),
      blur: 10,
      borderRadius: BorderRadius.circular(32),
      child: Column(
        children: [
          const Text(
            'LOG IN',
            style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenHeight(context) * .04,
          ),
          AppTextFormField(
            label: 'User Name',
            controller: emailController,
          ),
          SizedBox(
            height: screenHeight(context) * .04,
          ),
          AppTextFormField(
            label: 'password',
            controller: passwordController,
          ),
          SizedBox(
            height: screenHeight(context) * .04,
          ),
          AppButton(
              text: 'SUBMIT',
              function: () async {
                try {
                  await Login().login(
                      email: emailController.text,
                      password: passwordController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GalleryScreen(),
                      ));
                } catch (e) {
                  showSnackBar(context, 'Email or password is incorrect');
                }
              }),
        ],
      ),
    );
  }
}
