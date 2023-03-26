import 'package:ecommercegetx/controller/auth/successresetpassword_controller.dart';
import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/view/widget/auth/CustomButtomAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "32".tr,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColorApp.primaryColor,)),
            Text("37".tr),
            Text("38".tr),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(text: "31".tr, onPressed: () {
                controller.goToPageLogin();
              }),

            ),
            SizedBox(height: 30)
        ]),
      ),
    );
  }
}
