import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class CartAppEmpty extends StatefulWidget {
  const CartAppEmpty({Key? key}) : super(key: key);

  @override
  _CartAppEmptyState createState() => _CartAppEmptyState();
}

class _CartAppEmptyState extends State<CartAppEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "Cart"),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.12),
            horizontal: context.dynamicWidth(0.02)),
        children: [
          Column(
            children: [
              buildPaddingText(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CircleAvatar(
                backgroundColor: const Color(0xFFEF3C4C),
                radius: 75,
                child: Stack(children: [
                  Builder(builder: (context) {
                    return const Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 73,
                          child: Image(
                              image: AssetImage("assets/images/Vector.png"))),
                    );
                  }),
                ]),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingLetsFindText(context),
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
        alignment: Alignment.center,
        child: Text(
          "Your Cart Is Empty",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  Padding buildPaddingLetsFindText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          "Lets Find Your Dream Products",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Color(0xFF232F3E),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBoxSaveButton() {
    return SizedBox(
      height: 35,
      width: 220,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFFA931A),
        child: Builder(builder: (context) {
          return const Text(
            "Continue Shopping",
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
