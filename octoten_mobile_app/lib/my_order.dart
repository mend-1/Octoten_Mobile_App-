import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'constants.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myorder(),
    );
  }
}

class myorder extends StatefulWidget {
  const myorder({Key? key}) : super(key: key);

  @override
  _myorderState createState() => _myorderState();
}

class _myorderState extends State<myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                buildPaddingText(),
                buildGestureDetector(context),
                const SizedBox(
                  height: 20,
                ),
                buildGestureDetector(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          borderRadius: BorderRadius.circular(5),
          elevation: 2,
          child: Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.orange.shade50,
                        child: Builder(builder: (context) {
                          return const Text(
                            "Order No: 15261872",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            return const Text("Status", style: kBlackNormal);
                          }),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text("Order Completed", style: kRedBold),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            return const Text("Delivery Adress",
                                style: TextStyle(fontSize: 15));
                          }),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text("Home",
                              style: TextStyle(
                                  color: Colors.orange, fontSize: 18)),
                        ],
                      ),
                    ),
                    Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            return const Text("Total Price",
                                style: TextStyle(fontSize: 15));
                          }),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "\$2050",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            return const Text("Order Date",
                                style: TextStyle(fontSize: 15));
                          }),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "12 Feb 2021",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildPaddingText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          "My Order",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: const Center(
        child: Padding(
          padding: EdgeInsets.only(right: 70),
          child: Text(
            "My Order",
            style: kBlackBold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 7,
    );
  }
}
