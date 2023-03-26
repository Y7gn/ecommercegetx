import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  const CustomTextFormAuth(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      this.mycontroller,
      required this.valid,
      required this.isNumber,
      this.obscureText, this.onTapIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber
            ? TextInputType.numberWithOptions(decimal: false)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            label: Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Text(labelText),
            ),
            suffixIcon: InkWell(onTap: onTapIcon, child: Icon(iconData)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
