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
              buildContainerTextField(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerYourName(context),
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
              buildContainerDistrict(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildSizedBoxSaveButton(),
            ],
          ),
        ],
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
      height: context.dynamicHeight(0.06),
      width: 165,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "YY",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
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
      height: context.dynamicHeight(0.06),
      width: 165,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "MM",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
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
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
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
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Name On Card",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerYourName(BuildContext context) {
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
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Card Number",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerDistrict(BuildContext context) {
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
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "CVC",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
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
