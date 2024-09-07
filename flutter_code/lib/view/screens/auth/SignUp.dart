import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeshop/controller/auth/signUp_controller.dart';
import 'package:primeshop/core/functions/validinput.dart';
import 'package:primeshop/view/widgets/auth/custombuttonauth.dart';
import 'package:primeshop/view/widgets/auth/customtextfieldnorm.dart';
import 'package:primeshop/view/widgets/auth/customtextfieldpass.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
      body: Form(
        key: controller.formState,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const Text(
                "SignUp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 37, 37, 37),
                ),
              ),
              const SizedBox(height: 20),
              CustomtextfieldNorm(
                isNumber: false,
                valid: (val) {
                  return ValidInput(val!, 2, 100, "username");
                },
                myController: controller.username,
                prefixIcon: Icon(Icons.person_2_outlined),
                hint: "Enter your FullName",
              ),
              const SizedBox(height: 20),
              CustomtextfieldNorm(
                isNumber: false,
                valid: (val) {
                  return ValidInput(val!, 2, 100, "email");
                },
                myController: controller.email,
                prefixIcon: Icon(Icons.email_outlined),
                hint: "Enter your Email",
              ),
              const SizedBox(height: 20),
              CustomtextfieldNorm(
                isNumber: true,
                valid: (val) {
                  return ValidInput(val!, 11, 11, "phone");
                },
                myController: controller.phone,
                prefixIcon: Icon(Icons.phone),
                hint: "Enter your Phone Number",
              ),
              const SizedBox(height: 20),
              CustomtextfieldPass(
                valid: (val) {
                  return ValidInput(val!, 8, 50, "password");
                },
                myController: controller.password,
                hint: "Enter your Password",
                visability: true,
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 40),
              CustomButtonAuth(
                childText: 'Create Account',
                onPressed: () {
                  var formData = controller.formState.currentState;
                  if (formData != null && formData.validate()) {
                    controller.CreateAccount(context);
                  } else {
                    print("Form is not valid");
                  }
                },
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Or Login with"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                          "../../../../assets/images/icons8-facebook-50.png"),
                    ),
                  ),
                  const Text("  |  "),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                          "../../../../assets/images/icons8-google-50.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      controller.goToLogin(); // Function reference
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
