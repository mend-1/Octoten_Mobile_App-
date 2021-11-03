import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({Key? key}) : super(key: key);

  @override
  _AddCreditCardState createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "My Credit Cards"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.02),
        ),
        children: [
          Column(
            children: [
              buildPaddingText(),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerNameOnCard(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerCardNumber(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainerMM(context),
                  buildContainerYY(context),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerCvc(context),
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
          "Add Credit Card",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  Container buildContainerNameOnCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: double.infinity,
      child: TextField(
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Name On Card",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Roboto", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerCardNumber(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: double.infinity,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Card Number",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Roboto", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerMM(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: 155,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "MM",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Roboto", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerYY(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: 155,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "YY",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Roboto", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerCvc(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: double.infinity,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "CVC",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Roboto", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
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
              fontFamily: 'Poppins',
            ),
          );
        }),
      ),
    );
  }
}
