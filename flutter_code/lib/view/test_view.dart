import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:primeshop/controller/test_controller.dart';
import 'package:lottie/lottie.dart';

//import 'package:primeshop/core/class/statusrequest.dart';
import 'package:primeshop/core/constants/imageasset.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("test"),
        ),
        body: Center(child: Lottie.asset(imageAsset.loading))
        //GetBuilder<TestController>(builder: (controller) {
        //   if (controller.statusRequest == StatusRequest.loading) {
        //     return const Center(child: CircularProgressIndicator());
        //   } else if (controller.statusRequest == StatusRequest.offlinefailure) {
        //     return const Center(child: Text(" offline failure"));
        //   } else if (controller.statusRequest == StatusRequest.serverfailure) {
        //     return const Center(child: Text(" server failure"));
        //   } else if (controller.statusRequest == StatusRequest.failure) {
        //     return const Center(child: Text(" NO Data"));
        //   } else {
        //     return ListView.builder(
        //         itemCount: controller.data.length,
        //         itemBuilder: (context, index) {
        //           return Text("$controller.data");
        //         });
        //   }
        // }),
        );
  }
}
