import 'package:flutter/cupertino.dart';
import 'package:gallery/helper/api.dart';
import 'package:gallery/helper/constants.dart';
import 'package:gallery/presentation/screens/login/cubit/login_cubit.dart';

class GetImagesServices {
  Future<List> getImages(BuildContext context) async {
    Map<String, dynamic> loadedImages =
        await Api().get(url: '$baseUrl/my-gallery',token: LoginCubit.get(context).token);
    print(loadedImages);
    print(loadedImages['data']['images']);
    return loadedImages['data']['images'];
  }
}
