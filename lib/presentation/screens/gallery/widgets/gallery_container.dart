import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/helper/colors.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/cubit/grid_cubit.dart';
import 'package:gallery/presentation/screens/gallery/cubit/grid_cubit.dart';
import 'package:gallery/presentation/screens/gallery/widgets/mini_buttons.dart';
import 'package:gallery/presentation/screens/gallery/widgets/pics_grid.dart';
import 'package:gallery/presentation/screens/gallery/widgets/pics_grid2.dart';

class GalleryContainer extends StatelessWidget {
  const GalleryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      width: double.infinity,
      blur: 10,
      color: Colors.white.withOpacity(.4),
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context) * .037,
        horizontal: screenWidth(context) * .063,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome',
            style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 32,
                fontWeight: FontWeight.w500),
          ),
          const Text(
            'Mina',
            style: TextStyle(
                color: AppColors.textGrey,
                fontSize: 32,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: screenHeight(context) * .047,
          ),
          const MiniButtons(),
          SizedBox(
            height: screenHeight(context) * .035,
          ),
          BlocBuilder<GridCubit, GridState>(
            builder: (context, state) {
              if (state is GridOnline) {
                return const PicsGrid();
              }else{
                return const PicsGrid2();
              }
            },
          ),
        ],
      ),
    );
  }
}
