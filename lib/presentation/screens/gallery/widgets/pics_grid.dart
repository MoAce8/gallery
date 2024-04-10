import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/gallery/widgets/image_item.dart';
import 'package:gallery/services/get_images.dart';

class PicsGrid extends StatelessWidget {
  const PicsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: GetImagesServices().getImages(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: screenWidth(context) * .056,
                mainAxisSpacing: screenHeight(context) * .027,
              ),
              itemBuilder: (context, index) => ImageItem(
                pic: NetworkImage(snapshot.data![index]),
              ),
            );
          } else {
            print(snapshot);
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
