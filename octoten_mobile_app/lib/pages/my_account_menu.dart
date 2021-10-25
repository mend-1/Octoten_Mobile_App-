import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

import 'detail.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        customTitle: 'My Account',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.01),
            horizontal: context.dynamicWidth(0.01)),
        children: [
          Column(
            children: [
              buildPaddingMyOrder(context),
              buildPaddingMyInformation(context),
              buildPaddingMyAdress(context),
              buildPaddingMyCreditCards(context),
              buildPaddingMyReturns(context),
              buildPaddingMyMessages(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              Button(),
            ],
          )
        ],
      ),
    );
  }

  Align Button() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.all(
          context.dynamicHeight(0.01),
        ),
        child: SizedBox(
          height: context.dynamicHeight(0.06),
          width: context.dynamicWidth(0.3),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    return const Text(
                      "Sign out",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyMessages(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My Messages",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyReturns(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My Returns",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyCreditCards(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        //the height of my order
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My Credit Cards",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyAdress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        //the height of my order
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My Address",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyInformation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        //the height of my order
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My information",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingMyOrder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.01),
        right: context.dynamicHeight(0.01),
      ),
      child: SizedBox(
        height: context.dynamicHeight(0.08),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Detay()));
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                  child: Text(
                    "My Order",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
