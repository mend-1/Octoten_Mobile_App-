import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Sory By';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final notifications = [
    NotificationSetting(title: 'Name'),
    NotificationSetting(title: 'Lowest Price'),
    NotificationSetting(title: 'Highest Price'),
    NotificationSetting(title: 'New'),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: ListView(
            children: [
              ...notifications.map(buildSingleCheckbox).toList(),
              const SizedBox(
                height: 30,
              ),
              buildPaddingButton(),
            ],
          ),
        ),
      );

  Padding buildPaddingButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
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

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 75,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: const Center(
        child: Padding(
          padding: EdgeInsets.only(right: 100, top: 8),
          child: Text(
            "Sory By",
            style: kBlackBold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 7,
      //title: Text(widget.title),
    );
  }

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
