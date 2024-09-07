import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';

abstract class ResetpasswordController extends GetxController {
  void ResetPass(BuildContext context); // Accept context here
  void goToLogin(BuildContext context);
}

class ResetpasswordControllerImp extends ResetpasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void ResetPass(BuildContext context) {
    if (formState.currentState!.validate()) {
      // Now you can proceed with resetting the password
      goToLogin(context);
    } else {
      print("Not Valid");
    }
  }

  @override
  void goToLogin(BuildContext context) {
    AwesomeDialog(
      dismissOnTouchOutside: false,
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.rightSlide,
      title: 'Succeed',
      desc: 'You have successfully renewed your password!',
      descTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        Get.offAllNamed(AppRoutes.login);
      },
      btnOkColor: const Color(0xffa600ff),
      btnOkText: "Login",
    ).show();
  }
}
