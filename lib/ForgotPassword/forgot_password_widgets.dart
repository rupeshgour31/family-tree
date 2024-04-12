import 'package:tree/Common/button.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:flutter/material.dart';

Widget resetPassText() {
  return Text(
    'FORGOT PASSWORD',
    style: TextStyle(
      color: Color(0xff1C719C),
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget resetPassNextText() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 25.0,
      right: 25.0,
    ),
    child: Text(
      'Enter the following fields to reset your password.',
      style: TextStyle(
        color: Color(0xff1C719C),
        fontSize: 14.0,
      ),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
  );
}

Widget passwordField() {
  return AllInputDesign(
    labelText: 'New Password',
    keyBoardType: TextInputType.name,
    obscureText: true,
  );
}

Widget confirmPasswordField() {
  return AllInputDesign(
    labelText: 'Confirm Password',
    keyBoardType: TextInputType.name,
    obscureText: true,
  );
}

Widget submitBtn(context) {
  return Button(
    btnWidth: double.infinity,
    btnHeight: 52,
    buttonName: 'SUBMIT',
    // key: Key('login_submit'),
    decoration: BorderRadius.circular(15.0),
    btnColor: Color(0xff1C719C),
    color: Color(0xff1C719C),
    onPressed: () {},
  );
}
