import 'package:ecommercegetx/controller/onboarding_controller.dart';
import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller:controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 80),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 200,
                  height: 230,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 70),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        height: 2, color: AppColorApp.grey, fontSize: 17),
                  ),
                )
              ],
            ));
  }
}
