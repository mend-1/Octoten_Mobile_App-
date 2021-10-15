import 'package:flutter/material.dart';

import 'constants.dart';

class Detay extends StatefulWidget {
  const Detay({Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              "Detail",
              style: kBlackBold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 7,
      ),
    );
  }
}
