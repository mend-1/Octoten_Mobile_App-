import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

import '../model/constants.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String chose = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        customTitle: "Credit Card",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.03),
            horizontal: context.dynamicWidth(0.03)),
        children: [
          buildRowText(),
          SizedBox(
            height: context.dynamicHeight(0.01),
            //height: 20,
          ),
          buildRadioListTile1(),
          SizedBox(
            height: context.dynamicHeight(0.01),
          ),
          buildRadioListTile2(),
        ],
      ),
    );
  }

  Row buildRowText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Credit Card",
          style: TextStyle(
            fontFamily: 'Poppins-SemiBold',
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "+ Add New Card",
            style: kRedNormal,
          ),
        ),
      ],
    );
  }

  RadioListTile<String> buildRadioListTile1() {
    return RadioListTile<String>(
      value: "A",
      groupValue: chose,
      activeColor: Colors.red,
      onChanged: (deger) {
        setState(() {
          chose = deger!;
        });
      },
      title: const Text(
        "5406**** **** 3333",
        style: kBlackBold,
      ),
      subtitle: const Text(
        "Garanti Bankası - Bonus",
        style: kBlackNormal,
      ),
      secondary: GestureDetector(
        onTap: () {},
        child: const Text(
          "Change",
          style: kYellowNormal,
        ),
      ),
    );
  }

  RadioListTile<String> buildRadioListTile2() {
    return RadioListTile<String>(
      value: "B",
      groupValue: chose,
      activeColor: Colors.red,
      onChanged: (deger) {
        setState(() {
          chose = deger!;
        });
      },
      title: const Text(
        "5406**** **** 3333",
        style: kBlackBold,
      ),
      subtitle: const Text(
        "Garanti Bankası - Bonus",
        style: kBlackNormal,
      ),
      secondary: GestureDetector(
        onTap: () {},
        child: const Text(
          "Change",
          style: kYellowNormal,
        ),
      ),
    );
  }
}
