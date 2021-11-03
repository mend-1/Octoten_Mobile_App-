import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';

import '../model/constants.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomCloseAppBar(
          customTitle: 'Filter',
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.01),
              horizontal: context.dynamicWidth(0.01)),
          children: [
            paddingcategory(),
            buildPaddingbrand(),
            buildPaddingprice(),
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            buildPaddingButton(),
          ],
        ),
      );

  Padding paddingcategory() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.01)),
      child: ExpansionTile(
        title: const Text(
          "Category",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: context.dynamicHeight(0.3),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              reverse: true,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.dynamicHeight(0.03),
                      bottom: context.dynamicHeight(0.01),
                    ),
                    child: const Text(
                      "Show All",
                      style: kRedNormal,
                    ),
                  ),
                ),
                ...notifications.map(buildSingleCheckbox).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingbrand() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.01)),
      child: ExpansionTile(
        title: const Text(
          "Brand",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: context.dynamicHeight(0.3),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              reverse: true,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.dynamicHeight(0.03),
                      bottom: context.dynamicHeight(0.01),
                    ),
                    child: const Text(
                      "Show All",
                      style: kRedNormal,
                    ),
                  ),
                ),
                ...notificationss.map(buildSingleCheckbox).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingprice() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.01)),
      child: ExpansionTile(
        title: const Text(
          "Price",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        leading: const Icon(Icons.arrow_drop_up_outlined),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(builder: (context) {
                return SizedBox(
                  height: 40,
                  width: context.dynamicWidth(0.45),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.dynamicHeight(0.03),
                      bottom: context.dynamicHeight(0.01),
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixText: "\$ ",
                        prefixStyle: kBlackBold,
                        labelText: "Min. Price",
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 40,
                width: context.dynamicWidth(0.45),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: context.dynamicHeight(0.03),
                    bottom: context.dynamicHeight(0.01),
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixText: "\$ ",
                      prefixStyle: kBlackBold,
                      labelText: "Max. Price",
                      labelStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingButton() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: context.dynamicWidth(0.6),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: const Color(0xFFFA931A),
            child: const Text(
              "Apply",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ),
    );
  }

  final notifications = [
    NotificationSetting(title: 'Book'),
    NotificationSetting(title: 'Electronic'),
    NotificationSetting(title: 'Food'),
  ];

  final notificationss = [
    NotificationSetting(title: 'Apple'),
    NotificationSetting(title: 'Xiaomi'),
    NotificationSetting(title: 'Samsung'),
  ];

  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          notifications.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          setState(() {
            final newValue = !notification.value;
            notification.value = newValue;
          });
        },
      );

  Widget buildCheckbox({
    required NotificationSetting notification,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          notification.title,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      );
}
