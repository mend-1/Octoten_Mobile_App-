import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/detail.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Filter';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appbarbuild(),
        body: SafeArea(
          child: ListView(
            children: [
              paddingcategory(),
              buildPaddingbrand(),
              buildPaddingprice(),
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
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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

  Padding buildPaddingprice() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: const Text("Price"),
        collapsedIconColor: Colors.black,
        leading: const Icon(Icons.arrow_drop_up_outlined),
        children: [
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Builder(builder: (context) {
                  return const SizedBox(
                    height: 60,
                    width: 160,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "\$  Min. Price",
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 60,
                  width: 160,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "\$  Max. Price",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPaddingbrand() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: const Text("Brand"),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: 190,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              reverse: true,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Detay()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
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

  Padding paddingcategory() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: const Text("Category"),
        collapsedIconColor: Colors.black,
        children: [
          SizedBox(
            height: 190,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              reverse: true,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Detay()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
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

  AppBar appbarbuild() {
    return AppBar(
      toolbarHeight: 75,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
            color: Colors.black,
            onPressed: () {},
          ),
          const Text(
            "Filter",
            style: kBlackBold,
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 0, top: 8.0),
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 7, // add shadow
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
