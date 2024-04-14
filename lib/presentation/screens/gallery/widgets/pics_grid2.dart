import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/widgets/image_item.dart';
import 'package:gallery/services/get_images.dart';

class PicsGrid2 extends StatelessWidget {
  const PicsGrid2({Key? key}) : super(key: key);

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
        itemBuilder: (context, index) => ImageItem(
          pic: AssetImage('assets/images/pic.png'),
        ),
      ),
    );
  }
}
