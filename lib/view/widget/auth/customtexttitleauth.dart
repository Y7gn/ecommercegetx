import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CustomTextTitleAuth extends StatelessWidget {
    final String text;
  const CustomTextTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700),
      ),
    );
  }
}
