import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_text.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({Key? key}) : super(key: key);

  @override
  _AddCreditCardState createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "My Credit Cards"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.02),
        ),
        children: [
          Column(
            children: [
              CustomText(
                text: "Add Credit Card",
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              CustomTextField(
                text: "Name On Card",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomTextField(
                text: "Card Number",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                    text: "MM",
                    width: 150.0,
                  ),
                  CustomTextField(
                    text: "YY",
                    width: 150.0,
                  ),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomTextField(
                text: "CVC",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.03),
              ),
              SizedBox(
                height: 35,
                width: 170,
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color(0xFFFA931A),
                  child: Builder(builder: (context) {
                    return const Text(
                      "Save",
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
            ],
          ),
        ],
      ),
    );
  }
}
