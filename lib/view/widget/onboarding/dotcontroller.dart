import 'package:ecommercegetx/controller/onboarding_controller.dart';
import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CustomDotControllerBoarding extends StatelessWidget {
  const CustomDotControllerBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 900),
                    width: controller.currentPage == index ? 20 : 5,
                    height: 6,
                    decoration: BoxDecoration(
                        color: AppColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ));
  }
}
