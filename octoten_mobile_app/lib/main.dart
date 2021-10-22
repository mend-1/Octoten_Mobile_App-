import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/screens/credit_card.dart';
import 'package:octoten_mobile_app/screens/filter.dart';
import 'package:octoten_mobile_app/screens/my_account_menu.dart';
import 'package:octoten_mobile_app/screens/my_order.dart';
import 'package:octoten_mobile_app/screens/review.dart';
import 'package:octoten_mobile_app/screens/sory_by.dart';
import 'package:octoten_mobile_app/widgets/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const Mains(),
    );
  }
}

class Mains extends StatefulWidget {
  const Mains({Key? key}) : super(key: key);

  @override
  _MainsState createState() => _MainsState();
}

class _MainsState extends State<Mains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: "Pages"),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              buildPaddingButton(context),
              const SizedBox(
                height: 20,
              ),
              buildPaddingButton1(context),
              const SizedBox(
                height: 20,
              ),
              buildPaddingButton2(context),
              const SizedBox(
                height: 20,
              ),
              buildPaddingButton3(context),
              const SizedBox(
                height: 20,
              ),
              buildPaddingButton4(context),
              const SizedBox(
                height: 20,
              ),
              buildPaddingButton5(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CreditCard()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "Credit Card",
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

  Padding buildPaddingButton1(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Filter()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "Filter",
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

  Padding buildPaddingButton2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyAccount()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "My Account",
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

  Padding buildPaddingButton3(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyOrder()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "My Order",
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

  Padding buildPaddingButton4(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Review()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "Review",
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

  Padding buildPaddingButton5(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 40,
          width: 250,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SoryBy()));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return const Text(
                    "Sory By",
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
}
