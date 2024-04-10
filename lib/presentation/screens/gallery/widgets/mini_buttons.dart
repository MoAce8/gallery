import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/presentation/screens/gallery/widgets/upload_dialog.dart';
import 'package:gallery/presentation/screens/login/login_screen.dart';
import 'package:gallery/presentation/widgets/mini_button.dart';

class MiniButtons extends StatelessWidget {
  const MiniButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MiniButton(
          text: 'log out',
          function: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
          },
          iconColor: AppColors.darkRed,
          icon: Image.asset('assets/images/left.png'),
        ),
        MiniButton(
          text: 'upload',
          function: () {
            showDialog(context: context, builder: (context) => UploadDialog());
          },
          iconColor: AppColors.darkYellow,
          icon: Image.asset('assets/images/up.png'),
        ),
      ],
    );
  }
}
