import 'package:ecommercegetx/controller/auth/forgotpassword_controller.dart';
import 'package:ecommercegetx/controller/auth/resetpassword_controller.dart';
import 'package:ecommercegetx/controller/auth/successresetpassword_controller.dart';
import 'package:ecommercegetx/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/customTextBodyAuth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Reset Password",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "35".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(textBody: "35".tr),
            const SizedBox(height: 15),

            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              mycontroller: controller.password,
              hintText: "13".tr,
              iconData: Icons.lock_outline,
              labelText: "19".tr,
            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val) {},
              mycontroller: controller.password,
              hintText: "Re" + " " + "13".tr,
              iconData: Icons.lock_outline,
              labelText: "19".tr,
            ),

            CustomButtomAuth(
                text: "33".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            // const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
