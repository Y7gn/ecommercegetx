import 'package:ecommercegetx/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'core/class/statusrequest.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: GetBuilder<TestController>(builder: (controller){ 
        if(controller.statusRequest == StatusRequest.loading){
          return Text("Loading");
        }else if(controller.statusRequest == StatusRequest.offlinefailure){
          return Text("Offline failure");
        }else if(controller.statusRequest == StatusRequest.serverfailure){
          return Text("server failure");
          }else{
            return ListView.builder(itemBuilder: (context,index){
            itemCount:controller.data.length;
            itemBuilder:(context,index){
              return Text("${controller.data}");
            };
          }
          );
        }
      }),
    );
  }
}