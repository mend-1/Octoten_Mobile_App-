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
      home: review(),
    );
  }
}

class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  _reviewState createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
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
          elevation: 2,
          child: Container(
            height: 420,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/kamera1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Align(
                      child: Text("Canon Camera", style: kBlackNormal),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Lorem Ipsum Dolar!", style: kBlackBold),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur\n"
                    " adipiscing elit. Et porttitor ipsum bibendum\n"
                    " amet arcu, tortor. Vel non purus felis curabitur.\n"
                    " Consequat, dolor mi varius sit. Semper nis\n"
                    " lpharetra, proin sit non aenean purus",
                    style: kBlackNormal),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Text("Show Detail!", style: kRedNormal)),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Status", style: kBlackNormal),
                const Text("Under Review", style: kRedBold),
              ],
            ),
          ),
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
            "Review",
            style: kBlackBold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 7,
    );
  }
}
