import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_account_page.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

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
              CustomTextAccount(
                text: "My Order",
              ),
              CustomTextAccount(
                text: "My information",
              ),
              CustomTextAccount(
                text: "My Address",
              ),
              CustomTextAccount(
                text: "My Order",
              ),
              CustomTextAccount(
                text: "My Returns",
              ),
              CustomTextAccount(
                text: "My Messages",
              ),
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
            color: const Color(0xFFFFEBD5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    return const Text(
                      "Sign out",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Color(0xFFFA931A),
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
}
