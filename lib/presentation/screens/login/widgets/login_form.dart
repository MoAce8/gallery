import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/gallery_screen.dart';
import 'package:gallery/presentation/widgets/app_button.dart';
import 'package:gallery/presentation/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * .07,
          vertical: screenHeight(context) * .05),
      width: screenWidth(context) * .85,
      // height: screenHeight(context)*.4,
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
          const AppTextFormField(label: 'User Name'),
          SizedBox(
            height: screenHeight(context) * .04,
          ),
          const AppTextFormField(label: 'User Name'),
          SizedBox(
            height: screenHeight(context) * .04,
          ),
          AppButton(
              text: 'SUBMIT',
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GalleryScreen(),
                    ));
              }),
        ],
      ),
    );
  }
}
