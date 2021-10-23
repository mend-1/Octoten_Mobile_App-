import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';

import '../model/constants.dart';

class MyOrderDetail extends StatefulWidget {
  const MyOrderDetail({Key? key}) : super(key: key);

  @override
  _MyOrderDetailState createState() => _MyOrderDetailState();
}

class _MyOrderDetailState extends State<MyOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: "My Order Detail"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.02),
        ),
        children: [
          Column(
            children: [
              buildPaddingCard(context),
              const Divider(),
              buildPaddingone(context),
              buildPaddingtwo(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const Divider(),
              buildPaddingthre(context),
              buildPaddingfor(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const Divider(),
              textdeliveryaddress(),
              textbenyeder(),
              textbillingaddres(),
              textbenyeder(),
            ],
          ),
        ],
      ),
    );
  }

  Align textbillingaddres() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Billing Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Align textbenyeder() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Ben Yeder\n"
          "0 532 202 40 59\n"
          "Avrupa Konutları TEM Sitesi."
          "Blok 87 Kat 12 Daire 12\n"
          "Gaziosmanpaşa / İstanbul",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: 'Poppins',
            color: Colors.black.withOpacity(0.70),
          ),
        ),
      ),
    );
  }

  Align textdeliveryaddress() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Delivery Address",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Padding buildPaddingCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 35,
                width: 170,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.orange.shade50,
                  child: Builder(builder: (context) {
                    return const Text(
                      "Order No: 15261872",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      ),
                    );
                  }),
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text("Order Completed", style: kRedBold),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.dynamicHeight(0.06),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Delivery Adress",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Total Price",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "\$2050",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const Text(
                        "Order Date",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                    SizedBox(
                      height: context.dynamicHeight(0.005),
                    ),
                    const Text(
                      "12 Feb 2021",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/kamera1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.15),
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return const Text("Canon Camera", style: kBlackNormal);
                }),
                SizedBox(
                  height: context.dynamicHeight(0.010),
                ),
                Row(
                  children: [
                    const Text("\$200", style: kBlackBold),
                    SizedBox(
                      width: context.dynamicWidth(0.03),
                    ),
                    Text(
                      "(5 ıtem)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black.withOpacity(0.60),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingtwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35,
            width: 150,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 35,
            width: 150,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 2.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Return",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingthre(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/vacuum.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.15),
          ),
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return const Text("Vacuum Cleaner", style: kBlackNormal);
                }),
                SizedBox(
                  height: context.dynamicHeight(0.010),
                ),
                Row(
                  children: [
                    const Text("\$200", style: kBlackBold),
                    SizedBox(
                      width: context.dynamicWidth(0.03),
                    ),
                    Text(
                      "(2 ıtem)",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black.withOpacity(0.60),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingfor(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35,
            width: 150,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 35,
            width: 150,
            child: OutlineButton(
              borderSide: const BorderSide(color: Colors.red, width: 2.0),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFFEF3C4C),
              child: Builder(builder: (context) {
                return const Text(
                  "Return",
                  style: TextStyle(
                    color: Color(0xFFEF3C4C),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
