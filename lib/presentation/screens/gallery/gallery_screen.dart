import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/presentation/screens/gallery/cubit/grid_cubit.dart';
import 'package:gallery/presentation/screens/gallery/widgets/circle_pic.dart';
import 'package:gallery/presentation/screens/gallery/widgets/corner_clip.dart';
import 'package:gallery/presentation/screens/gallery/widgets/gallery_container.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GridCubit(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/gallery.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const SafeArea(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                GalleryContainer(),
                CornerClip(),
                CirclePic(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
