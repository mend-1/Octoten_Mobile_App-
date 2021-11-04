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
  String choose = "";
  String choosee = "";

  int _itemCount = 0;
  int _itemCount2 = 0;

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
              buildPaddingDeliveryOption1(context),
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
              buildPaddingDeliveryOption2(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Padding(
                padding: EdgeInsets.only(right: context.dynamicHeight(0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildContainerDiscountCode(context),
                    buildSizedBoxApply(),
                  ],
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildPaddingTextCanonCameraPrice(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildPaddingTextVacummCleanerPrice(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingSubTotal(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingShipping(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingTaxes(),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildPaddingTotal(),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              buildSizedBoxConfirmButton(),
              SizedBox(
                height: context.dynamicHeight(0.1),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox buildSizedBoxConfirmButton() {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: context.dynamicHeight(0.02),
          right: context.dynamicHeight(0.02),
        ),
        child: RaisedButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: const Color(0xFFEF3C4C),
          child: Builder(builder: (context) {
            return const Text(
              "Confirm Order",
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
    );
  }

  Padding buildPaddingTotal() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return const Text(
              "Total",
              style: kBlackNormal,
            );
          }),
          const Text(
            "\$2100",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingTaxes() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return const Text(
              "Taxes",
              style: kBlackNormal,
            );
          }),
          const Text(
            "\$50",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingShipping() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return const Text(
              "Shipping",
              style: kBlackNormal,
            );
          }),
          const Text(
            "\$50",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingSubTotal() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return const Text(
              "Sub Total",
              style: kBlackNormal,
            );
          }),
          const Text(
            "\$2000",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingTextVacummCleanerPrice() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Vacuum Cleaner",
                  style: kBlackNormal,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Text(
                  "2 Item",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xFF9496A4),
                  ),
                ),
              ],
            );
          }),
          const Text(
            "\$1000",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingTextCanonCameraPrice() {
    return Padding(
      padding: EdgeInsets.only(
          right: context.dynamicHeight(0.02),
          left: context.dynamicHeight(0.02)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Canon Camera",
                  style: kBlackNormal,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Text(
                  "5 Item",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xFF9496A4),
                  ),
                ),
              ],
            );
          }),
          const Text(
            "\$1000",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainerDiscountCode(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.dynamicHeight(0.01),
        left: context.dynamicHeight(0.02),
        right: context.dynamicHeight(0.02),
      ),
      height: 35,
      width: 200,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFDFB73E)),
          ),
          hintText: "Discount Code",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFDFB73E), width: 1.0),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBoxApply() {
    return SizedBox(
      height: 35,
      width: 110,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFFA931A),
        child: Builder(builder: (context) {
          return const Text(
            "Apply",
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

  Padding buildPaddingDeliveryOption1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Material(
        color: Colors.white,
        elevation: 2.5,
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
                groupValue: choosee,
                activeColor: Colors.red,
                onChanged: (deger) {
                  setState(() {
                    choosee = deger!;
                    debugPrint("secilen deger: $deger");
                  });
                },
                title: const Text(
                  "Standard Cargo",
                  style: kBlackBold,
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Delivery Date ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "22 Feb 2021",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                secondary: const Text(
                  "\$50",
                  style: kBlackBold,
                ),
              ),
              RadioListTile<String>(
                value: "B",
                groupValue: choosee,
                activeColor: Colors.red,
                onChanged: (deger) {
                  setState(() {
                    choosee = deger!;
                    debugPrint("secilen deger: $deger");
                  });
                },
                title: const Text(
                  "Fast Cargo",
                  style: kBlackBold,
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Delivery Date ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "22 Feb 2021",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
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
          GestureDetector(
              onTap: () {}, child: const Text("Empty Cart", style: kRedNormal)),
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
                image: AssetImage("assets/images/kamera1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.dynamicHeight(0.03)),
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
                  color: Color(0xFF9496A4),
                  size: 30,
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
              onPressed: () => setState(() => _itemCount--),
              icon: const Icon(
                Icons.remove,
                color: Color(0xFF9496A4),
              )),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: Align(
            child: Text(
              "$_itemCount",
              style: const TextStyle(
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
              onPressed: () => setState(() => _itemCount++),
              icon: const Icon(
                Icons.add,
                color: Color(0xFF9496A4),
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
        thickness: 1,
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
                image: AssetImage("assets/images/vacuum.png"),
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
                  color: Color(0xFF9496A4),
                  size: 30,
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
              onPressed: () => setState(() => _itemCount2--),
              icon: const Icon(
                Icons.remove,
                color: Color(0xFF9496A4),
              )),
        ),
        SizedBox(
          width: context.dynamicWidth(0.01),
        ),
        Padding(
          padding: EdgeInsets.only(top: context.dynamicHeight(0.03)),
          child: Align(
            child: Text(
              "$_itemCount2",
              style: const TextStyle(
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
              onPressed: () => setState(() => _itemCount2++),
              icon: const Icon(
                Icons.add,
                color: Color(0xFF9496A4),
              )),
        ),
      ],
    );
  }

  Padding buildPaddingDeliveryOption2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Material(
        color: Colors.white,
        elevation: 2.5,
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
                groupValue: choose,
                activeColor: Colors.red,
                onChanged: (deger) {
                  setState(() {
                    choose = deger!;
                    debugPrint("secilen deger: $deger");
                  });
                },
                title: const Text(
                  "Standard Cargo",
                  style: kBlackBold,
                ),
                subtitle: Row(
                  children: [
                    const Text(
                      "Delivery Date ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "22 Feb 2021",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                secondary: const Text(
                  "\$50",
                  style: kBlackBold,
                ),
              ),
              RadioListTile<String>(
                value: "B",
                groupValue: choose,
                activeColor: Colors.red,
                onChanged: (deger) {
                  setState(() {
                    choose = deger!;
                    debugPrint("secilen deger: $deger");
                  });
                },
                title: const Text(
                  "Fast Cargo",
                  style: kBlackBold,
                ),
                subtitle: Row(
                  children: [
                    const Text(
                      "Delivery Date ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "22 Feb 2021",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
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
