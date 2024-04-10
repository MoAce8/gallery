import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    required this.text,
    required this.pic,
  }) : super(key: key);

  final String text;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {},
      label: Text(
        text,
        style: const TextStyle(
            color: AppColors.textGrey,
            fontSize: 27,
            fontWeight: FontWeight.bold),
      ),
      icon: Image.asset(pic),
    );
  }
}
