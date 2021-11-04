import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/core/custom_appbar.dart';
import 'package:octoten_mobile_app/custom_components/custom_button_save_submit.dart';
import 'package:octoten_mobile_app/model/constants.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/model/rating.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  late int _rating;

  late final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(customTitle: "Comment"),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.02),
          horizontal: context.dynamicWidth(0.02),
        ),
        children: [
          Column(
            children: [
              buildPadding(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: context.dynamicHeight(0.01),
                    right: context.dynamicHeight(0.01)),
                child: const Divider(
                  thickness: 1,
                ),
              ),
              rating(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              loremIpsumDolorText(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildContainerTextField(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSaveSubmitButton(
                text: "Submit",
                width: 170,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.dynamicHeight(0.01),
      ),
      child: Row(
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
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(builder: (context) {
                  return const Text("Canon Camera", style: kBlackNormal);
                }),
                SizedBox(
                  height: context.dynamicHeight(0.010),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding rating(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.dynamicHeight(0.02),
        top: context.dynamicHeight(0.02),
      ),
      child: Rating(
        (rating) {
          setState(() {
            _rating = rating;
          });
        },
      ),
    );
  }

  Align loremIpsumDolorText(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: context.dynamicHeight(0.03),
          top: context.dynamicHeight(0.02),
        ),
        child: const Text("Lorem Ipsum Dolor!", style: kBlackBold),
      ),
    );
  }

  Container buildContainerTextField(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(context.dynamicHeight(0.02)),
      height: maxLines * 28.0,
      child: TextField(
        style: const TextStyle(fontSize: 14.0, height: 1.4),
        maxLines: maxLines,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Your Review",
          hintStyle: TextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
        ),
      ),
    );
  }
}
