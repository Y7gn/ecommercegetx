import 'package:ecommercegetx/controller/onboarding_controller.dart';
import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/data/datasource/static.dart';
import 'package:ecommercegetx/view/widget/onboarding/customslider.dart';
import 'package:ecommercegetx/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../widget/onboarding/custombutton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerBoarding(),
                  Spacer(flex: 2),
                  CustomButtonOnBoarding()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
