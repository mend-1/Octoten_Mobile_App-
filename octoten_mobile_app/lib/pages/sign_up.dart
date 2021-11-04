import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/custom_components/custom_sign_button.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/constants.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/model/notification_setting.dart';
import 'package:octoten_mobile_app/pages/sign_in.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign up With Apple",
                image:
                    const Image(image: AssetImage("assets/images/apple.png")),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign up With Google",
                image:
                    const Image(image: AssetImage("assets/images/google.png")),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign up With Facebook",
                image: const Image(
                    image: AssetImage("assets/images/facebook.png")),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildAlignTextOr(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomTextField(
                text: "Name",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              CustomTextField(
                text: "Email",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              CustomTextField(
                text: "Phone Number",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerPassword(context),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
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

  Row buildRowIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/octoten.png"),
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
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      letterSpacing: 2,
                    ));
              }),
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
        ],
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
        ],
      ),
    );
  }

  Container buildContainerPassword(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.dynamicHeight(0.01)),
      height: 35,
      width: double.infinity,
      child: TextField(
        obscureText: _isObscure,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1.0, color: Color(0xFFFA931A)),
          ),
          hintText: "Password",
          contentPadding: EdgeInsets.only(left: context.dynamicHeight(0.015)),
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xFFB3B1B1),
            fontFamily: "Roboto",
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xFFFA931A), width: 1.0),
          ),
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBoxSignUpButton() {
    return SizedBox(
      height: 40,
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
              fontFamily: 'OpenSans',
            ),
          );
        }),
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
              return GestureDetector(
                  onTap: () {},
                  child: const Text("Already Member?", style: kBlackNormal));
            }),
          ],
        ),
        SizedBox(
          width: context.dynamicWidth(0.02),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sign_In()));
                  },
                  child: const Text("Sign In", style: kRedBold));
            }),
          ],
        ),
      ],
    );
  }

  final notifications = [
    NotificationSetting(
      title: 'I would like to receive electronic messages'
          ' within the scope of Consent Text to be'
          ' informed about important campaigns.',
    ),
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
        leading: Theme(
          data: ThemeData(
            // checked color
            primarySwatch: Colors.orange,
            // border color
            unselectedWidgetColor: const Color(0xFFFA931A),
          ),
          child: Checkbox(
            value: notification.value,
            onChanged: (value) => onClicked(),
          ),
        ),
        title: Text(
          notification.title,
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        ),
      );
}
