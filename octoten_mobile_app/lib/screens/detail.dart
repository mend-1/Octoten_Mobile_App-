import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/widgets/custom_appbar.dart';

class Detay extends StatefulWidget {
  const Detay({Key? key}) : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
      customTitle: 'Detail',
    ));
  }
}
