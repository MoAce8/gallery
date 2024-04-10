import 'package:flutter/material.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';

class CornerClip extends StatelessWidget {
  const CornerClip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: IconClip(),
      child: Container(
        color: AppColors.lightPurple,
        height: screenHeight(context) * .16,
        width: screenHeight(context) * .19,
      ),
    );
  }
}

class IconClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    final path = Path();
    path.moveTo(w, 0);
    path.lineTo(w, h);
    Offset start1 = Offset(w, h * .78);
    Offset end1 = Offset(w * .7, h * .8);
    path.quadraticBezierTo(start1.dx, start1.dy, end1.dx, end1.dy);
    Offset start2 = Offset(w * .28, h * .8);
    Offset end2 = Offset(w * .3, h * .36);
    path.quadraticBezierTo(start2.dx, start2.dy, end2.dx, end2.dy);
    Offset start3 = Offset(w * .3, h * .02);
    Offset end3 = const Offset(0, 0);
    path.quadraticBezierTo(start3.dx, start3.dy, end3.dx, end3.dy);
    // path.lineTo(0, h);
    // path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

