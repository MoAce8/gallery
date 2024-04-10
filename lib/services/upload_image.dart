import 'package:gallery/helper/api.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/login/cubit/login_cubit.dart';

class UploadServices{
  uploadImage({file, context})async{
    await Api().uploadFile(url: '$baseUrl/upload', file: file,token: LoginCubit.get(context).token);
    print('uploaded');
  }
}