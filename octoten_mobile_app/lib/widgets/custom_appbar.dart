import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octoten_mobile_app/model/constants.dart';

class CustomAppBar extends AppBar {
  final String customTitle;

  CustomAppBar({Key? key, required this.customTitle})
      : super(
            key: key,
            leading: Builder(
                builder: (context) => IconButton(
                      icon: const Icon(
                        CupertinoIcons.left_chevron,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
            backgroundColor: Colors.white,
            centerTitle: true,
            toolbarHeight: 80,
            title: Text(
              customTitle,
              style: kBlackBold,
            ));
}

class CustomCloseAppBar extends AppBar {
  final String customTitle;

  CustomCloseAppBar({Key? key, required this.customTitle})
      : super(
            key: key,
            leading: Builder(
                builder: (context) => IconButton(
                      icon: const Icon(
                        CupertinoIcons.clear,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
            backgroundColor: Colors.white,
            centerTitle: true,
            toolbarHeight: 80,
            title: Text(
              customTitle,
              style: kBlackBold,
            ));
}
