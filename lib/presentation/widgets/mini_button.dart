import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';

class MiniButton extends StatelessWidget {
  const MiniButton({
    super.key,
    this.background = Colors.white,
    this.isUperCase = false,
    required this.text,
    required this.function,
    required this.iconColor,
    this.icon,
  });

  final Color background;
  final Color iconColor;
  final Widget? icon;
  final bool isUperCase;
  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: background,
        padding: EdgeInsets.symmetric(
            vertical: screenHeight(context) * .006,
            horizontal: screenWidth(context) * .035),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: function,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  iconColor,
                  iconColor.withOpacity(.6),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              boxShadow: [
                BoxShadow(
                  color: iconColor.withOpacity(.25),
                  blurRadius: 6,
                  offset: const Offset(-4, 0)
                )
              ]
            ),
            padding: EdgeInsets.all(screenWidth(context) * .02),
            child:icon,
          ),
          SizedBox(
            width: screenWidth(context) * .023,
          ),
          Text(
            isUperCase ? text.toUpperCase() : text,
            style: const TextStyle(
                color: AppColors.textGrey,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
