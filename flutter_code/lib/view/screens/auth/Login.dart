import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeshop/controller/auth/login_controller.dart';
import 'package:primeshop/core/functions/validinput.dart';
import 'package:primeshop/core/functions/exitalert.dart';
import 'package:primeshop/view/widgets/auth/custombuttonauth.dart';
import 'package:primeshop/view/widgets/auth/customtextfieldnorm.dart';
import 'package:primeshop/view/widgets/auth/customtextfieldpass.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 37, 37, 37),
          ),
        ),
      ),
      body: PopScope(
        onPopInvoked: ExitAlert,
        child: Container(
          child: Form(
            key: controller.formState,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      "../../../../assets/images/Login.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomtextfieldNorm(
                    isNumber: false,
                    valid: (val) {
                      return ValidInput(val!, 2, 100, "email");
                    },
                    myController: controller.email,
                    prefixIcon: const Icon(Icons.email_outlined),
                    hint: "Enter your Email",
                  ),
                  const SizedBox(height: 20),
                  CustomtextfieldPass(
                    valid: (val) {
                      return ValidInput(val!, 8, 50, "password");
                    },
                    myController: controller.Password,
                    hint: "Enter your Password",
                    visability: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            controller.goToForgetPassword();
                          },
                          child: const Text("Forgot Password?"))
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomButtonAuth(
                    childText: 'Login',
                    onPressed: () {
                      controller.login();
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
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: controller.goToSignup,
                          child: const Text(
                            "SignUp",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
