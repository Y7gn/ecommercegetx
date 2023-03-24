import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  const CustomTextFormAuth({super.key, required this.hintText, required this.labelText, required this.iconData, this.mycontroller, required this.valid});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: 14),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                label: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                  child: Text(labelText),
                ),
                suffixIcon: Icon(iconData),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),),
    );
  }
}