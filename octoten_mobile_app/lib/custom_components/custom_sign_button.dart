import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class CustomSignButton extends StatelessWidget {
  String text;
  Image image;

  CustomSignButton({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.04),
              child: Image(
                image: image.image,
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(0.02),
            ),
            Text(
              text,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF9496A4),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
