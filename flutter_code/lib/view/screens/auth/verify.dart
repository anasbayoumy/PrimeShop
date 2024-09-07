import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:primeshop/controller/auth/Verify_controller.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyControllerImp controller = Get.put(VerifyControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: 200, // Adjusted height for better fit
          width: 200, // Adjusted width for better fit
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(
              "../../../../assets/images/Logo-removebg-preview.png",
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                        child: const Text(
                      "Verification",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 37, 37, 37),
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: const Text(
                      "Please write the OTP that was sent to : anas@gmail.com",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 82, 82, 82),
                      ),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OtpTextField(
                fieldWidth: 50,
                fieldHeight: 70,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                numberOfFields: 6,
                borderColor: Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  controller.goToResetPass();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
