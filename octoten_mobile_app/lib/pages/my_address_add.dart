import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_button_save_submit.dart';
import 'package:octoten_mobile_app/custom_components/custom_text.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class MyAddressAdd extends StatefulWidget {
  const MyAddressAdd({Key? key}) : super(key: key);

  @override
  _MyAddressAddState createState() => _MyAddressAddState();
}

class _MyAddressAddState extends State<MyAddressAdd> {
  late final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "My Address"),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.02),
            horizontal: context.dynamicWidth(0.02)),
        children: [
          Column(
            children: [
              CustomText(
                text: "Add Address",
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
                  text: "Address Name",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.dynamicHeight(0.02),
                  right: context.dynamicHeight(0.02),
                ),
                child: CustomTextField(
                  text: "Your Name",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.dynamicHeight(0.02),
                  right: context.dynamicHeight(0.02),
                ),
                child: CustomTextField(
                  text: "City",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.dynamicHeight(0.02),
                  right: context.dynamicHeight(0.02),
                ),
                child: CustomTextField(
                  text: "District",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerFullAddress(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
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

  Container buildContainerFullAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(context.dynamicHeight(0.02)),
      height: maxLines * 20.0,
      child: TextField(
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        maxLines: maxLines,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Full Address",
          hintStyle: TextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            color: Color(0xFFB3B1B1),
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }
}
