import 'package:ecommercegetx/controller/auth/forgotpassword_controller.dart';
import 'package:ecommercegetx/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/customTextBodyAuth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "14".tr,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "27".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(
                textBody:
                    "29".tr),
            const SizedBox(height: 15),
            
            CustomTextFormAuth(
              valid: (val){
                
              },
              mycontroller: controller.email,
              hintText: "12".tr,
              iconData: Icons.email_outlined,
              labelText: "18".tr,
            ),
            
            
            CustomButtomAuth(text: "30".tr, onPressed: () {
              controller.goToVerifyCode();
            }),
            // const SizedBox(height: 40),
            
          ],
        ),
      ),
    );
  }
}
