import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/cubit/grid_cubit.dart';

class CirclePic extends StatelessWidget {
  const CirclePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight(context) * .0275,
      right: screenHeight(context) * .032,
      child: GestureDetector(
        onTap: (){
          GridCubit.get(context).setGrid();
        },
        child: CircleAvatar(
          radius: screenHeight(context) * .035,
          child: Image.asset('assets/images/face.png'),
        ),
      ),
    );
  }
}
