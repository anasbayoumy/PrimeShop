import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';

abstract class ForgetpasswordController extends GetxController {
  // ignore: non_constant_identifier_names
  CheckPass();

  goToVerify();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  late TextEditingController email;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  CheckPass() {
    var formData = formState.currentState;
    if (formData != null && formData.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToVerify() {
    Get.toNamed(AppRoutes.Verify); // Corrected route name
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
