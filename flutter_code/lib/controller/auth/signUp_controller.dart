//import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
//import 'package:primeshop/core/class/statusrequest.dart';
import 'package:primeshop/core/constants/routes.dart';
//import 'package:primeshop/core/functions/handlingdata.dart';
//import 'package:primeshop/data/datasource/remote/auth/signup.dart';

abstract class SignupController extends GetxController {
  CreateAccount(BuildContext context);

  goToLogin();
}

class SignUpControllerImp extends SignupController {
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  // late StatusRequest statusRequest;
  // SignupData signupData = SignupData(Get.find());

  List data = [];
  @override
  CreateAccount(BuildContext context) {
    // var formData = formState.currentState;
    // if (formData!.validate()) {
    //   statusRequest = StatusRequest.loading;
    //   var response = await signupData.postData(
    //       username.text, email.text, password.text, phone.text);
    //   statusRequest = handlingData(response);
    //   if (StatusRequest.success == statusRequest) {
    //     if (response['status' == "success"]) {
    //       data.addAll(response['data']);
    Get.toNamed(AppRoutes.OtpSignup); // Corrected route name
    //     } else {
    //       AwesomeDialog(
    //         dismissOnTouchOutside: false,
    //         context: context,
    //         dialogType: DialogType.error,
    //         animType: AnimType.rightSlide,
    //         title: 'Error',
    //         desc: 'This user is already here , please Login....',
    //         descTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    //         btnCancelOnPress: () {},
    //         btnOkOnPress: () {
    //           Get.offAllNamed(AppRoutes.login);
    //         },
    //         btnOkColor: const Color(0xffa600ff),
    //         btnOkText: "Login",
    //       ).show();
    //       statusRequest = StatusRequest.failure;
    //     }
    //   }
    //   update();
    //   //Get.toNamed(AppRoutes.OtpSignup); // Corrected route name
    // } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login); // Corrected route name
  }
}
