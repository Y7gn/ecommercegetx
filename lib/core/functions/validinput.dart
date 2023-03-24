import 'package:get/get.dart';

validInput(String val,int min,int max,String type){
  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "not valid username";
    }
  }
  if(type == "email"){
    if(!GetUtils.isUsername(val)){
      return "not valid email";
    }
  }
  if(type == "phone"){
    if(!GetUtils.isUsername(val)){
      return "not valid phone";
    }
  }

  if(val.isEmpty){
    return "Value can't be empty";
  }
  if(val.length < min){
    return "Value can't be less than $min";
  }
  if(val.length > max){
    return "Value can't be greater than $min";
  }
}