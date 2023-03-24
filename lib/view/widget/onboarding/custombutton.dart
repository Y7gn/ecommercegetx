import 'package:ecommercegetx/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
      color: AppColorApp.primaryColor,
      child: MaterialButton(onPressed: () {
        controller.next();
      }, child: Text("8".tr)),
    );
  }
}
