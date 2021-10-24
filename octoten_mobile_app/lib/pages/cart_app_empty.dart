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
              buildContainerBasketImage(),
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

  Container buildContainerBasketImage() {
    return Container(
      height: 135,
      width: 135,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/basket.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding buildPaddingLetsFindText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Lets Find Your Dream Products",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: Colors.black.withOpacity(0.70),
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
