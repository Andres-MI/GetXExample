import 'package:estados/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var userExists = false.obs;
  var user = User().obs;

  void loadUser(User user) {
    this.user.value = user;
    this.userExists.value = true;
  }

  void editAge(int age) {
    this.user.update((val) {
      val?.age = age;
    });
  }

  void addJob(String job) {
    this.user.update((val) {
      //val?.jobs.add(job);
      val?.jobs = [...val.jobs, job];
    });
  }
}
