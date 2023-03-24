import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/core/constant/routes.dart';
import 'package:ecommercegetx/core/localization/changelocal.dart';
import 'package:ecommercegetx/view/widget/language/custombuttonlanguage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomButtonLang(textbutton: "Ar", onPressed: () {
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding) ; 
            }),
            CustomButtonLang(textbutton: "En", onPressed: () {
              controller.changeLang("en");
              Get.toNamed(AppRoute.onBoarding) ; 
            }),
          ],
        ),
      ),
    );
  }
}
