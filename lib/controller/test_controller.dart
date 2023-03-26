import 'package:ecommercegetx/core/class/crud.dart';
import 'package:ecommercegetx/core/class/statusrequest.dart';
import 'package:ecommercegetx/test_view.dart';
import 'package:get/get.dart';

import '../core/functions/handlingdatacontroller.dart';
import '../data/datasource/remote/test_data.dart';


class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(); 
    print("=============================== Controller $response ") ; 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}