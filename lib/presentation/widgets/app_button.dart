import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.background = AppColors.lightBlue,
    this.isUperCase = false,
    required this.text,
    required this.function,
  });

  final Color background;
  final bool isUperCase;
  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          padding: EdgeInsets.all(screenHeight(context)*.013),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: function,
        child: Center(
          child: Text(
            isUperCase ? text.toUpperCase() : text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
