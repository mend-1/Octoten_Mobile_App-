import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class CustomText extends StatelessWidget {
  String text;

  CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: Align(
        alignment: Alignment.topLeft,
        child: Builder(
          builder: (context) {
            return Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            );
          },
        ),
      ),
    );
  }
}
