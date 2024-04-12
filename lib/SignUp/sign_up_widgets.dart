import 'package:tree/Common/button.dart';
import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:tree/Common/validations_field.dart';
import 'package:flutter/material.dart';

Widget firstNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpFirstName,
    validatorFieldValue: validateFirstName,
    labelText: 'First Name',
    keyBoardType: TextInputType.name,
  );
}

Widget secondNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpSecondName,
    validatorFieldValue: validateSecondName,
    labelText: 'Second Name',
    keyBoardType: TextInputType.name,
  );
}

Widget thirdNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpThirdName,
    // validatorFieldValue: validateUsername,
    labelText: 'Third Name',
    keyBoardType: TextInputType.name,
  );
}

Widget fourthNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpFourthName,
    // validatorFieldValue: validateUsername,
    labelText: 'Fourth Name',
    keyBoardType: TextInputType.name,
  );
}

Widget fifthNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpFifthName,
    // validatorFieldValue: validateUsername,
    labelText: 'Fifth Name',
    keyBoardType: TextInputType.name,
  );
}

Widget userNameTextField(model) {
  return AllInputDesign(
    controller: model.signUpUserName,
    validatorFieldValue: validateUsername,
    labelText: 'Username',
    keyBoardType: TextInputType.name,
  );
}

Widget emailTextField(model) {
  return AllInputDesign(
    controller: model.signUpEmail,
    validatorFieldValue: validateEmailField,
    labelText: 'Email',
    keyBoardType: TextInputType.emailAddress,
  );
}

Widget passTextField(model) {
  return AllInputDesign(
    controller: model.signUpPassword,
    validatorFieldValue: validatePassword,
    labelText: 'Password',
    keyBoardType: TextInputType.name,
    obscureText: true,
  );
}

Widget acceptTAndC(model) {
  return Row(
    children: [
      InkWell(
        onTap: () {
          model.termAndCondition();
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(
              color:  redColor ,
            ),
            shape: BoxShape.circle,
            color: model.value ? redColor : whiteColor,
          ),
          child: model.value
              ? Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.white,
                )
              : Icon(
                  Icons.check,
                  size: 20.0,
                  color: Colors.white,
                ),
        ),
      ),
      widthSizedBox(8.0),
      Text(
        'Terms & Conditions',
        style: TextStyle(
          color: Color(0xff549584),
          fontSize: 14.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  );
}

Widget signInButton(context, formKey, model) {
  return Button(
    btnWidth: double.infinity,
    btnHeight: 52,
    buttonName: 'SIGN UP',
    // key: Key('login_submit'),
    decoration: BorderRadius.circular(15.0),
    btnColor: Color(0xff1C719C),
    color: Color(0xff1C719C),
    onPressed: () {
      if (formKey.currentState.validate()) {
        if (model.value == true) {
          model.signUpRequest(context);
        } else {
          ToastShow.showToast('Please accept Terms and Condition');
        }
      }
    },
  );
}

Widget alreadyAccountToSignIn(context) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, '/signIn'),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: TextStyle(
            color: Color(0xff549584),
            fontSize: 14.0,
          ),
        ),
        Text(
          'Sign in',
          style: TextStyle(
            color: Color(0xff1C719C),
            fontSize: 14.0,
          ),
        ),
      ],
    ),
  );
}
