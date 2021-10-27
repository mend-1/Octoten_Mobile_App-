import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
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
              buildPaddingText(),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerTextField(context),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainerTextFieldCode(context),
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
          "Change Email",
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
      height: 35,
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Your Email",
          hintStyle: TextStyle(
              fontFamily: "Roboto-Regular",
              fontSize: 14,
              color: Color(0xFFB3B1B1)),
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

  Container buildContainerTextFieldCode(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: context.dynamicWidth(0.45),
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Conformation Code",
          hintStyle: TextStyle(
              fontFamily: "Roboto-Regular",
              fontSize: 14,
              color: Color(0xFFB3B1B1)),
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
            fontFamily: 'Poppins-Regular',
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
            fontFamily: 'Poppins-Regular',
            color: Colors.grey.shade500,
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
