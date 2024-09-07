import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';

abstract class OtpSignupController extends GetxController {
  CheckOtp();

  goToLogin(BuildContext context);
}

class OtpSignupControllerImp extends OtpSignupController {
  late String verificationCode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  CheckOtp() {
    // Add logic to check OTP here if necessary
  }

  @override
  goToLogin(BuildContext context) {
    AwesomeDialog(
      //autoDismiss: false,
      dismissOnTouchOutside: false,
      context: context, // Pass context here
      dialogType: DialogType.success,
      animType: AnimType.rightSlide,
      title: 'Success',
      desc: 'You have successfully created an account!',
      descTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      btnOkOnPress: () {
        Get.offAllNamed(AppRoutes.login); // Navigate to login page
      },
      btnOkColor: const Color(0xffa600ff),
      btnOkText: "Login",
    ).show();
  }
}
