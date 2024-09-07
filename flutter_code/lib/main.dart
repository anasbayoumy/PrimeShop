import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeshop/core/class/crud.dart';
import 'package:primeshop/core/localization/langchange.dart';
import 'package:primeshop/core/localization/translation.dart';
import 'package:primeshop/core/services/services.dart';
import 'package:primeshop/intialbinding/initialbinding.dart';
import 'package:primeshop/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialService();
  Get.put(Crud()); // Add this line to inject Crud
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Langchange controller = Get.put(Langchange());

    return GetMaterialApp(
      translations: MyTrans(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: "PrimeShop",
      getPages: routes,
      initialBinding: Initialbinding(),
      // routes: routes,
    );
  }
}
