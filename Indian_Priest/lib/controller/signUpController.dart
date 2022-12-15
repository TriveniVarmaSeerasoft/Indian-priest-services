import 'package:get/get.dart';

class signUpController extends GetxController {
  var isProfilPicPathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProfilPicPathSet.value = true;
  }
}
