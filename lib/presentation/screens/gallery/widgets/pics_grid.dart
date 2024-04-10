import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/widgets/image_item.dart';

class PicsGrid extends StatelessWidget {
  const PicsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: screenWidth(context) * .056,
          mainAxisSpacing: screenHeight(context) * .027,
        ),
        itemBuilder: (context, index) => const ImageItem(
          pic: AssetImage('assets/images/pic.png'),
        ),
      ),
    );
  }
}
