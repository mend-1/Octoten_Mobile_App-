import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_button_save_submit.dart';
import 'package:octoten_mobile_app/custom_components/custom_text.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class MyInformationName extends StatefulWidget {
  const MyInformationName({Key? key}) : super(key: key);

  @override
  _MyInformationNameState createState() => _MyInformationNameState();
}

class _MyInformationNameState extends State<MyInformationName> {
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
                text: "Change Name",
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
                  text: "Name",
                  width: double.infinity,
                ),
              ),
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
}
