import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
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
      appBar: CustomAppBar(customTitle: "My Address"),
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
                height: context.dynamicHeight(0.02),
              ),
              buildContainerYourName(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerCity(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerDistrict(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerFullAddress(context),
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

  Padding buildPaddingText() {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Add Address",
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
          hintText: "Address Name",
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
          hintText: "Your Name",
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

  Container buildContainerCity(BuildContext context) {
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
          hintText: "City",
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
          hintText: "District",
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

  Container buildContainerFullAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(context.dynamicHeight(0.02)),
      height: maxLines * 20.0,
      child: TextField(
        style: const TextStyle(fontSize: 14.0, height: 2.0, color: Colors.red),
        maxLines: maxLines,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Full Address",
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
