import 'package:ecommercegetx/binding.dart';
import 'package:ecommercegetx/core/constant/color.dart';
import 'package:ecommercegetx/core/localization/changelocal.dart';
import 'package:ecommercegetx/core/localization/translation.dart';
import 'package:ecommercegetx/core/services/services.dart';
import 'package:ecommercegetx/routes.dart';
import 'package:ecommercegetx/test.dart';
import 'package:ecommercegetx/view/screen/auth/login.dart';
import 'package:ecommercegetx/view/screen/language.dart';
import 'package:ecommercegetx/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      // home: const Test(),
      // home: const Language(), 
      // routes: routes,
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
