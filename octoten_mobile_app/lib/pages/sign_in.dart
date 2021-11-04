import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:octoten_mobile_app/custom_components/custom_sign_button.dart';
import 'package:octoten_mobile_app/custom_components/custom_textfield.dart';
import 'package:octoten_mobile_app/model/constants.dart';
import 'package:octoten_mobile_app/model/context_extensions.dart';
import 'package:octoten_mobile_app/pages/sign_up.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  _Sign_InState createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
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
              buildAlignTextSignIn(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign in With Apple",
                image:
                    const Image(image: AssetImage("assets/images/apple.png")),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign in With Google",
                image:
                    const Image(image: AssetImage("assets/images/google.png")),
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              CustomSignButton(
                text: "Sign in With Facebook",
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
                text: "Email Address or Mobile Phone",
                width: double.infinity,
              ),
              SizedBox(
                height: context.dynamicHeight(0.01),
              ),
              buildContainerPassword(context),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Builder(builder: (context) {
                    return const Text("Forgot Password", style: kRedBold);
                  }),
                  SizedBox(
                    height: context.dynamicHeight(0.03),
                  ),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildSizedBoxSignInButton(),
              SizedBox(
                height: context.dynamicHeight(0.02),
              ),
              buildRowTextNotAMember(context),
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

  Align buildAlignTextSignIn(BuildContext context) {
    return Align(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(builder: (context) {
            return const Text("Sign In",
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
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(fontSize: 14.0, height: 1.0),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 2.0, color: Color(0xFFFA931A)),
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

  SizedBox buildSizedBoxSignInButton() {
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
            "Sign In",
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

  Row buildRowTextNotAMember(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return GestureDetector(
                  onTap: () {},
                  child: const Text("Not A Member?", style: kBlackNormal));
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
                            builder: (context) => const Sign_Up()));
                  },
                  child: const Text("Sign Up", style: kRedBold));
            }),
          ],
        ),
      ],
    );
  }
}
