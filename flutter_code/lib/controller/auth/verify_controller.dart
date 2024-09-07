import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';

abstract class VerifyController extends GetxController {
  CheckOtp();

  goToResetPass();
}

class VerifyControllerImp extends VerifyController {
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
  goToResetPass() {
    Get.toNamed(AppRoutes.ResetPassword); // Corrected navigation method
  }
}
