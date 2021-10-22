import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/widgets/custom_appbar.dart';

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
          elevation: 2,
          child: Container(
            height: context.dynamicHeight(0.7),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(
              context.dynamicHeight(0.02),
            ),
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
                Divider(
                  height: context.dynamicHeight(0.01),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
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
                Divider(
                  height: context.dynamicHeight(0.02),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.01),
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
}
