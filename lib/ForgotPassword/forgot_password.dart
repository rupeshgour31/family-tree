import 'package:tree/Common/common_widgets.dart';
import 'package:tree/ForgotPassword/forgot_password_widgets.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'FORGOT PASSWORD',
          style: TextStyle(
            color: Color(0xff89A309),
            fontSize: 18.0,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.35,
          left: 25.0,
          right: 25.0,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Group 11.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              resetPassText(),
              heightSizedBox(10.0),
              resetPassNextText(),
              heightSizedBox(25.0),
              passwordField(),
              confirmPasswordField(),
              heightSizedBox(30.0),
              submitBtn(context),
            ],
          ),
        ),
      ),
    );
  }
}
