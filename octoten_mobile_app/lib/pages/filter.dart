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
        appBar: CustomCloseAppBar(
          customTitle: 'Filter',
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.01),
              horizontal: context.dynamicWidth(0.02)),
          children: [
            paddingcategory(),
            buildPaddingbrand(),
            buildPaddingprice(),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
            buildPaddingButton(),
          ],
        ),
      );

  Padding paddingcategory() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: ExpansionTile(
        title: const Text(
          "Category",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: context.dynamicHeight(0.25),
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
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: ExpansionTile(
        title: const Text(
          "Brand",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: context.dynamicHeight(0.25),
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
      padding: EdgeInsets.all(context.dynamicHeight(0.02)),
      child: ExpansionTile(
        title: const Text(
          "Price",
          style: kBlackBold,
        ),
        collapsedIconColor: Colors.black,
        leading: const Icon(Icons.arrow_drop_up_outlined),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Builder(builder: (context) {
                return SizedBox(
                  height: context.dynamicHeight(0.09),
                  width: context.dynamicWidth(0.4),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: context.dynamicHeight(0.03),
                      bottom: context.dynamicHeight(0.01),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "\$"
                            "  Min. Price",
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: context.dynamicHeight(0.09),
                width: context.dynamicWidth(0.4),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: context.dynamicHeight(0.03),
                    bottom: context.dynamicHeight(0.01),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "\$  Max. Price",
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
          //vertical: context.dynamicHeight(0.008),
          //horizontal: context.dynamicWidth(0.1),
          height: context.dynamicHeight(0.06),
          width: context.dynamicWidth(0.50),
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
