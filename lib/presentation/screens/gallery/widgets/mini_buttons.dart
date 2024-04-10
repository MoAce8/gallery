import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
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
          function: () {},
          iconColor: AppColors.darkRed,
          icon: Image.asset('assets/images/left.png'),
        ),
        MiniButton(
          text: 'upload',
          function: () {},
          iconColor: AppColors.darkYellow,
          icon: Image.asset('assets/images/up.png'),
        ),
      ],
    );
  }
}
