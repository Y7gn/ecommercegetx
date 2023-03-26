import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommercegetx/core/class/statusrequest.dart';
import 'package:ecommercegetx/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
      var check = await checkInternet();
      print("###################################$check");
      print("###################################1$linkurl");
      print("###################################2$data");
      if (await checkInternet()) {
        print("checkedf");
        var response = await http.post(Uri.parse(linkurl), body: data);
        print("########################----33333333$response");
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    }
    
  }

