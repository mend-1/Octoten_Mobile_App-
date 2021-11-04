import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/pages/detail.dart';

class CustomTextAccount extends StatelessWidget {
  String text;

  CustomTextAccount({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Color(0xFF9496A4),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF9496A4),
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
