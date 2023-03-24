import 'package:ecommercegetx/controller/auth/login_controller.dart';
import 'package:ecommercegetx/core/functions/validinput.dart';
import 'package:ecommercegetx/view/widget/auth/customTextFormAuth.dart';
import 'package:ecommercegetx/view/widget/auth/logoAuth.dart';
import 'package:ecommercegetx/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/customTextBodyAuth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "9".tr,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const LogoAuth(),
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(textBody: "11".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
                hintText: "12".tr,
                iconData: Icons.email_outlined,
                labelText: "18".tr,
                mycontroller: controller.email,
              ),
              CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                hintText: "13".tr,
                iconData: Icons.lock_outline,
                labelText: "19".tr,
                mycontroller: controller.password,
                // mycontroller: ,
              ),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  "14".tr,
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtomAuth(text: "15".tr, onPressed: () {
                controller.login();
              }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: "16".tr,
                texttwo: "17".tr,
                onTap: () {
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
