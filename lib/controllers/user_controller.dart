import 'package:get/get.dart';
import 'package:states_handlers/models/user_getx.dart';

class UserController extends GetxController {
  RxBool userExist = false.obs;
  Rx<UserGetX> user = UserGetX().obs;

  void loadUser(UserGetX user) {
    this.user.value = user;
    userExist.value = true;
  }

  void setAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }

  void addProfesion(String profession) {
    user.update((val) {
      val!.profession = [...val.profession, profession];
    });
  }
}
