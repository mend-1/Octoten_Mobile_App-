import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';

import '../model/constants.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        customTitle: 'Review',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: context.dynamicHeight(0.01),
            horizontal: context.dynamicWidth(0.01)),
        children: [
          Column(
            children: [
              buildGestureDetector(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildGestureDetector(context),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(
          context.dynamicHeight(0.01),
        ),
        child: Material(
          color: Colors.white,
          elevation: 1,
          child: Padding(
            padding: EdgeInsets.all(context.dynamicHeight(0.02)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 78,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/kamera1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.dynamicWidth(0.15),
                    ),
                    const Align(
                      child: Text("Canon Camera", style: kBlackNormal),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                Row(
                  children: [
                    Builder(builder: (context) {
                      return const Icon(
                        Icons.star_rounded,
                        color: Color(0xFFDFB73E),
                      );
                    }),
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFDFB73E),
                    ),
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFDFB73E),
                    ),
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFDFB73E),
                    ),
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFF9496A4),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Text("Lorem Ipsum Dolar!", style: kBlackBold),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur\n"
                    " adipiscing elit. Et porttitor ipsum bibendum\n"
                    " amet arcu, tortor. Vel non purus felis curabitur.\n"
                    " Consequat, dolor mi varius sit. Semper nis\n"
                    " lpharetra, proin sit non aenean purus",
                    style: kBlackNormal),
                SizedBox(
                  height: context.dynamicHeight(0.03),
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Text("Show Detail!", style: kRedNormal)),
                SizedBox(
                  height: context.dynamicHeight(0.02),
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                const Text("Status",
                    style: TextStyle(
                      fontFamily: 'Poppins-Regular',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    )),
                const Text("Under Review", style: kRedBold),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
