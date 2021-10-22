import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/widgets/custom_appbar.dart';

import '../model/constants.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String sec = "";
  String secim = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        customTitle: "Credit Card",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.03),
            horizontal: context.dynamicWidth(0.02)),
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
            fontFamily: 'Poppins',
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
      groupValue: sec,
      activeColor: Colors.red,
      onChanged: (deger) {
        setState(() {
          sec = deger!;
          debugPrint("secilen deger: $deger");
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
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  RadioListTile<String> buildRadioListTile2() {
    return RadioListTile<String>(
      value: "B",
      groupValue: sec,
      activeColor: Colors.red,
      onChanged: (deger) {
        setState(() {
          sec = deger!;
          debugPrint("secilen deger: $deger");
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
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
