import 'package:ecommercegetx/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeControler extends GetxController{
  checkCode();
  goToResetPassword();
}
class VerifyCodeControlerImp extends VerifyCodeControler{
  late String verifycode;
  @override
  checkCode() {
    
  }
  
  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }
  
  @override 
  void onInit() {
    super.onInit();
  }

  
} 