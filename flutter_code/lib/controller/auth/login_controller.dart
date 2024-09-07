import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToForgetPassword();
  goToSignup();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController Password;

  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  goToSignup() {
    Get.toNamed(AppRoutes.SignUp);
  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("Valid");
    } else {
      print("NOt VAlid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    Password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    Password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.ForgetPassword);
  }
}
