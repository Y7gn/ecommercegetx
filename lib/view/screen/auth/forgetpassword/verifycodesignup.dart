import 'package:ecommercegetx/controller/auth/forgotpassword_controller.dart';
import 'package:ecommercegetx/controller/auth/verifycodeSignUp_controller.dart';
import 'package:ecommercegetx/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/auth/CustomButtomAuth.dart';
import '../../../widget/auth/customTextBodyAuth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorApp.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Verification Code",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Check code"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                textBody:
                    "Please Enter The Digit Sent To malekkhodary@gmail.com"),
            const SizedBox(height: 15),

            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50.0,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),

            // CustomButtomAuth(text: "Check", onPressed: () {}),
            // const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
