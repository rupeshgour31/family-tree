import 'package:tree/Common/button.dart';
import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:tree/Common/validations_field.dart';
import 'package:flutter/material.dart';

Widget welcomeText() {
  return Text(
    'Welcome ',
    style: TextStyle(
      color: Color(0xff1C719C),
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    ),
  );
}

Widget signInText() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 25.0,
      right: 25.0,
    ),
    child: Text(
      'Sign up to get started and experience great diving & shopping deals ',
      style: TextStyle(
        color: Color(0xff1C719C),
        fontSize: 14.0,
      ),
      maxLines: 2,
      textAlign: TextAlign.center,
    ),
  );
}

Widget usernameTextField(model) {
  return AllInputDesign(
    labelText: 'Username',
    controller: model.signInUsernameController,
    validatorFieldValue: validateUsername,
    keyBoardType: TextInputType.name,
    textInputAction: TextInputAction.next,
  );
}

Widget passwordTextField(model) {
  return AllInputDesign(
    labelText: 'Password',
    controller: model.signInPasswordController,
    keyBoardType: TextInputType.name,
    validatorFieldValue: validatePassword,
    obscureText: true,
    textInputAction: TextInputAction.done,
  );
}

Widget forgotPassword(context) {
  return Align(
    alignment: Alignment.centerRight,
    child: GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/resetPassword',
      ),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Color(0xff89A309),
          fontSize: 14.0,
        ),
      ),
    ),
  );
}

Widget signInBtn(context, formKey, model) {
  return Button(
    btnWidth: double.infinity,
    btnHeight: 52,
    buttonName: 'SIGN IN',
    // key: Key('login_submit'),
    decoration: BorderRadius.circular(15.0),
    btnColor: Color(0xff1C719C),
    color: Color(0xff1C719C),
    onPressed: () {
      if (formKey.currentState.validate()) {
        model.signInRequest(context);
      }
    },
  );
}

Widget signUpBtn(context) {
  return Button(
    btnWidth: double.infinity,
    btnHeight: 52,
    buttonName: 'SIGN UP',
    decoration: BorderRadius.circular(15.0),
    btnColor: Color(0xff98DF86),
    color: Color(0xff98DF86),
    onPressed: () {
      Navigator.pushNamed(context, '/signUp');
    },
  );
}
