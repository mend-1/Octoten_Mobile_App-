import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/model/constants.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.05),
          horizontal: context.dynamicWidth(0.04),
        ),
        children: [
          Column(
            children: [
              buildRowIcon(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildAlignTextSignUp(context),
              buildSizedBoxApple(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildSizedBoxGoogle(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildSizedBoxFacebook(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildAlignTextOr(context),
              buildContainerName(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerEmail(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerPhoneNumber(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerPassword(context),
              ...notifications.map(buildSingleCheckbox).toList(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildSizedBoxSignUpButton(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildRowTextAlreadyMember(context),
            ],
          ),
        ],
      ),
    );
  }

  Row buildRowTextAlreadyMember(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return const Text("Already Member?", style: kBlackNormal);
            }),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
          ],
        ),
        SizedBox(
          width: context.dynamicWidth(0.02),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return const Text("Sign In", style: kRedBold);
            }),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox buildSizedBoxSignUpButton() {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color(0xFFFA931A),
        child: Builder(builder: (context) {
          return const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: 'Poppins',
            ),
          );
        }),
      ),
    );
  }

  Container buildContainerName(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.dynamicHeight(0.01)),
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Name",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerEmail(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.dynamicHeight(0.01)),
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Email",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerPhoneNumber(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.dynamicHeight(0.01)),
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          hintText: "Phone Number",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Container buildContainerPassword(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.dynamicHeight(0.01)),
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: const TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.red),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 2.0, color: Colors.orange),
          ),
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFFB3B1B1)),
          fillColor: Colors.white,
          filled: true,
          suffixIcon: Icon(Icons.remove_red_eye_outlined),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.orange, width: 2.0),
          ),
        ),
      ),
    );
  }

  Row buildRowIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/octoten.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: context.dynamicWidth(0.03),
        ),
        Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Builder(builder: (context) {
                return const Text("OCTOTEN",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      letterSpacing: 2,
                    ));
              }),
              SizedBox(
                height: context.dynamicHeight(0.010),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Align buildAlignTextSignUp(BuildContext context) {
    return Align(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            return const Text("Sign Up",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ));
          }),
          SizedBox(
            height: context.dynamicHeight(0.03),
          ),
        ],
      ),
    );
  }

  SizedBox buildSizedBoxApple(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.05),
              child: const Image(
                image: AssetImage("assets/apple.png"),
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(0.02),
            ),
            Text(
              "Sign Up With Apple",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black.withOpacity(0.50),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBoxGoogle(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.04),
              child: const Image(
                image: AssetImage("assets/google.png"),
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(0.02),
            ),
            Text(
              "Sign Up With Google",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black.withOpacity(0.50),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBoxFacebook(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.05),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.04),
              child: const Image(
                image: AssetImage("assets/facebook.png"),
              ),
            ),
            SizedBox(
              width: context.dynamicWidth(0.02),
            ),
            Text(
              "Sign Up With Facebook",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black.withOpacity(0.50),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align buildAlignTextOr(BuildContext context) {
    return Align(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            return const Text("Or",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ));
          }),
          SizedBox(
            height: context.dynamicHeight(0.03),
          ),
        ],
      ),
    );
  }

  final notifications = [
    NotificationSetting(
        title: 'I would like to receive electronic messages\n'
            ' within the scope of Consent Text to be\n'
            ' informed about important campaigns.'),
  ];

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
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
        ),
      );
}
