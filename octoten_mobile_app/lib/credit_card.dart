import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: creditcard(),
    );
  }
}

class creditcard extends StatefulWidget {
  const creditcard({Key? key}) : super(key: key);

  @override
  _creditcardState createState() => _creditcardState();
}

class _creditcardState extends State<creditcard> {
  String sec = "";
  String secim = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarbuild(context),
      body: SafeArea(
        child: ListView(
          children: [
            buildPadding(),
          ],
        ),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, top: 25.0, right: 20.0, bottom: 8.0),
      child: Column(
        children: [
          Row(
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
          ),
          const SizedBox(
            height: 20,
          ),
          RadioListTile<String>(
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
          ),
          const SizedBox(
            height: 20,
          ),
          RadioListTile<String>(
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
          ),
        ],
      ),
    );
  }

  AppBar appbarbuild(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: const Center(
          child: Text(
        "My Credit Cards",
        style: kBlackBold,
      )),
      backgroundColor: Colors.white,
      elevation: 7,
    );
  }
}
