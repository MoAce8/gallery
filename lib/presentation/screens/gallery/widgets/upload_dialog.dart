import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/helper/image_picker.dart';
import 'package:gallery/presentation/widgets/image_button.dart';
import 'package:gallery/services/upload_image.dart';

class UploadDialog extends StatelessWidget {
  const UploadDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: const BorderSide(color: Colors.white)),
      clipBehavior: Clip.hardEdge,
      child: BlurryContainer(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight(context) * .054,
            horizontal: screenWidth(context) * .19),
        color: Colors.white.withOpacity(.4),
        blur: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             ImageButton(
                text: 'Gallery',
                pic: 'assets/images/pics.png',
                function: ()async {
                  final image = await pickFromGallery();
                  UploadServices().uploadImage(file: image,context: context);
                  Navigator.pop(context);
                }),
            SizedBox(
              height: screenHeight(context) * .06,
            ),
             ImageButton(
                text: 'Camera',
                pic: 'assets/images/camera.png',
                function: () async{
                  final image = await pickFromCamera();
                  UploadServices().uploadImage(file: image,context: context);
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
