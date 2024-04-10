import 'package:image_picker/image_picker.dart';

pickFromGallery() async {
  final ImagePicker picker = ImagePicker();
  XFile? file = await picker.pickImage(source: ImageSource.gallery);
  if(file != null){
    return await file.readAsBytes();
  }
}

pickFromCamera() async {
  final ImagePicker picker = ImagePicker();
  XFile? file = await picker.pickImage(source: ImageSource.camera);
  if(file != null){
    return await file.readAsBytes();
  }
}
