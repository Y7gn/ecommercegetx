import 'package:ecommercegetx/core/constant/routes.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/forgotpassword.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:ecommercegetx/view/screen/auth/login.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommercegetx/view/screen/auth/signup.dart';
import 'package:ecommercegetx/view/screen/auth/success_signup.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommercegetx/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth 
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.forgetPassword : (context) => const ForgetPassword(),
  AppRoute.verifyCode : (context) => const VerifyCode(),
  AppRoute.resetPassword : (context) => const ResetPassword(),
  AppRoute.successSignUp : (context) => const SuccessSignUp(),
  AppRoute.successResetPassword : (context) => const SuccessResetPassword(),
  AppRoute.checkemail : (context) => const CheckEmail(),
  AppRoute.verifyCodeSignUp : (context) => const VerifyCodeSignUp(),

  // OnBoarding
  AppRoute.onBoarding : (context) => const OnBoarding(),
};
