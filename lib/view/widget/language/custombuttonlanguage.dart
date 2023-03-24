import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constant/color.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({super.key, required this.textbutton, this.onPressed});
  final String textbutton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: AppColorApp.primaryColor,
                textColor: Colors.white,
                onPressed: onPressed,
                child: Text(
                  textbutton,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
  }
}