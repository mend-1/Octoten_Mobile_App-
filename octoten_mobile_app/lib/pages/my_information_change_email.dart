import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_button_save_submit.dart';
import 'package:octoten_mobile_app/custom_components/custom_text.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class MyInformationChangeEmail extends StatefulWidget {
  const MyInformationChangeEmail({Key? key}) : super(key: key);

  @override
  _MyInformationChangeEmailState createState() =>
      _MyInformationChangeEmailState();
}

class _MyInformationChangeEmailState extends State<MyInformationChangeEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "My information"),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.02),
            horizontal: context.dynamicWidth(0.02)),
        children: [
          Column(
            children: [
              CustomText(
                text: "Change Email",
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.dynamicHeight(0.02),
                  right: context.dynamicHeight(0.02),
                ),
                child: CustomTextField(
                  text: "Your Email",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: context.dynamicHeight(0.02),
                      right: context.dynamicHeight(0.02),
                    ),
                    child: CustomTextField(
                      text: "Conformation Code",
                      width: context.dynamicWidth(0.45),
                    ),
                  ),
                  buildPaddingSendCode(context),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildAlignTextEnter(),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              CustomSaveSubmitButton(
                width: 170,
                text: "Save",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingSendCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Send Code",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Color(0xFFEF3C4C),
          ),
        ),
      ),
    );
  }

  Align buildAlignTextEnter() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: context.dynamicHeight(0.02),
          right: context.dynamicHeight(0.02),
        ),
        child: Text(
          "Enter the confirmation code sent to your mobile phone",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            fontFamily: 'Poppins',
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
