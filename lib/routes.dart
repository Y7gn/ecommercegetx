import 'package:ecommercegetx/core/constant/routes.dart';
import 'package:ecommercegetx/core/middleware/middleware.dart';
import 'package:ecommercegetx/test.dart';
import 'package:ecommercegetx/test_view.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/forgotpassword.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:ecommercegetx/view/screen/auth/login.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommercegetx/view/screen/auth/signup.dart';
import 'package:ecommercegetx/view/screen/auth/success_signup.dart';
import 'package:ecommercegetx/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommercegetx/view/screen/language.dart';
import 'package:ecommercegetx/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [ 
  GetPage(name: "/", page: ()=> const TestView()),
  // GetPage(name: "/", page: () => const Language() , middlewares: [
  //   MyMiddleWare()
  // ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
];
// Map<String, Widget Function(BuildContext)> routess = {
//   // Auth 
//   AppRoute.login : (context) => const Login(),
//   AppRoute.signUp : (context) => const SignUp(),
//   AppRoute.forgetPassword : (context) => const ForgetPassword(),
//   AppRoute.verifyCode : (context) => const VerifyCode(),
//   AppRoute.resetPassword : (context) => const ResetPassword(),
//   AppRoute.successSignUp : (context) => const SuccessSignUp(),
//   AppRoute.successResetPassword : (context) => const SuccessResetPassword(),
//   AppRoute.verifyCodeSignUp : (context) => const VerifyCodeSignUp(),

//   // OnBoarding
//   AppRoute.onBoarding : (context) => const OnBoarding(),
// };
