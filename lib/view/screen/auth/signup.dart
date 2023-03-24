import 'package:ecommercegetx/controller/auth/signup_controller.dart';
import 'package:ecommercegetx/view/widget/auth/customTextFormAuth.dart';
import 'package:ecommercegetx/view/widget/auth/logoAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../widget/auth/CustomButtomAuth.dart';
import '../../widget/auth/customTextBodyAuth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(
                textBody:
                    "24".tr),
            SizedBox(height: 15),
            CustomTextFormAuth(
              valid: (val){

              },
              mycontroller: controller.username,
              hintText: "23".tr,
              iconData: Icons.person_outline,
              labelText: "20".tr,
            ),
            CustomTextFormAuth(
              valid: (val){
                
              },
              mycontroller: controller.email,
              hintText: "12".tr,
              iconData: Icons.email_outlined,
              labelText: "18.tr",
            ),
            CustomTextFormAuth(
              valid: (val){
                
              },
              mycontroller: controller.phone,
              hintText: "22".tr,
              iconData: Icons.phone_android_outlined,
              labelText: "21".tr,
            ),
            CustomTextFormAuth(
              valid: (val){
                
              },
              mycontroller: controller.password,
              hintText: "13".tr,
              iconData: Icons.lock_outline,
              labelText: "Password",
            ),
            
            CustomButtomAuth(text: "17".tr, onPressed: () {
              controller.signUp();
            }),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("16".tr),
                InkWell(
                    onTap: () {
                      controller.goToSignIn();
                    },
                    child: Text("15".tr,
                        style: TextStyle(
                            color: AppColorApp.primaryColor,
                            fontWeight: FontWeight.bold)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
