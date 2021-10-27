import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
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
              buildPaddingText(),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerTextField(context),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildSizedBoxSaveButton(),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingText() {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Change Name",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins-SemiBold',
          ),
        ),
      ),
    );
  }

  Container buildContainerTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: context.dynamicHeight(0.06),
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Name",
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFFB3B1B1),
            fontFamily: "Roboto-Regular",
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

  SizedBox buildSizedBoxSaveButton() {
    return SizedBox(
      height: 35,
      width: 170,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFFA931A),
        child: Builder(builder: (context) {
          return const Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: 'Poppins-Bold',
            ),
          );
        }),
      ),
    );
  }
}
