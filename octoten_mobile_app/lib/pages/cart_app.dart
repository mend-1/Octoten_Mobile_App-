import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

import '../model/constants.dart';

class CartApp extends StatefulWidget {
  const CartApp({Key? key}) : super(key: key);

  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  String sec = "";
  String secim = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "Cart"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.02),
        ),
        children: [
          Column(
            children: [
              buildPaddingText(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingCamera(context),
              buildRowAddAndRemove(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildPaddingDeliveryCard2(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingDivider(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingVacuum(context),
              buildRowAddAndRemove2(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingDeliveryCard2(context),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return const Text(
              "Your Item(7)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            );
          }),
          const Text("Empty Cart", style: kRedNormal),
        ],
      ),
    );
  }

  Padding buildPaddingCamera(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Camera",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.01)),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$200",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: context.dynamicWidth(0.3),
          ),
          Padding(
            padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.grey,
                  size: 33,
                )),
          ),
        ],
      ),
    );
  }

  Row buildRowAddAndRemove(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                color: Colors.grey,
              )),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: const Align(
            child: Text(
              "5",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.grey,
              )),
        ),
      ],
    );
  }

  Padding buildPaddingDivider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: const Divider(
        height: 5,
      ),
    );
  }

  Padding buildPaddingVacuum(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Vacuum Cleaner",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              SizedBox(height: context.dynamicHeight(0.01)),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$500",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: context.dynamicWidth(0.1),
          ),
          Padding(
            padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.grey,
                  size: 33,
                )),
          ),
        ],
      ),
    );
  }

  Row buildRowAddAndRemove2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                color: Colors.grey,
              )),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: const Align(
            child: Text(
              "2",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.grey,
              )),
        ),
      ],
    );
  }

  Padding buildPaddingDeliveryCard2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Material(
        color: Colors.white,
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.only(
            left: context.dynamicHeight(0.06),
            right: context.dynamicHeight(0.06),
            top: context.dynamicHeight(0.02),
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Delivery Option",
                  style: kBlackBold,
                ),
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
                  "Standard Cargo",
                  style: kBlackBold,
                ),
                subtitle: const Text(
                  "Delivery Date 22 Feb 2021",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                secondary: const Text(
                  "\$50",
                  style: kBlackBold,
                ),
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
                  "Fast Cargo",
                  style: kBlackBold,
                ),
                subtitle: const Text(
                  "Delivery Date 22 Feb 2021",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                secondary: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "\$100",
                    style: kBlackBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
