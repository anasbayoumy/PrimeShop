import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:primeshop/core/constants/routes.dart';
import 'package:primeshop/core/services/services.dart';

class Mymiddleware extends GetMiddleware {
  int? priority = 1;
  MyServices myServices = Get.find();

  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBoarding") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
