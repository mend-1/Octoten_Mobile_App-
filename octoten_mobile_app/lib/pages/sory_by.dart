import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';

import '../model/constants.dart';

class SoryBy extends StatefulWidget {
  @override
  _SoryByState createState() => _SoryByState();
}

class _SoryByState extends State<SoryBy> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomCloseAppBar(
          customTitle: 'Sory By',
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.02),
              horizontal: context.dynamicWidth(0.02)),
          children: [
            ...notifications.map(buildSingleCheckbox).toList(),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            buildPaddingButton(),
          ],
        ),
      );

  Padding buildPaddingButton() {
    return Padding(
      padding: EdgeInsets.all(context.dynamicHeight(0.01)),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: context.dynamicHeight(0.06),
          width: context.dynamicWidth(0.50),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "Apply",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final notifications = [
    NotificationSetting(title: 'Name'),
    NotificationSetting(title: 'Lowest Price'),
    NotificationSetting(title: 'Highest Price'),
    NotificationSetting(title: 'New'),
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
          style: kBlackNormal,
        ),
      );
}
