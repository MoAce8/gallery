import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key, required this.pic}) : super(key: key);
  final ImageProvider pic;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: pic, fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              offset: const Offset(0, 4),
              spreadRadius: -6,
              blurRadius: 8,
            )
          ]),
      height: screenWidth(context) * .233,
      width: screenWidth(context) * .233,
    );
  }
}
