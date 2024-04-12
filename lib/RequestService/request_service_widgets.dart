import 'package:tree/Common/button.dart';
import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget fullNameTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'FullName',
      ),
      Container(
        height: 40,
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        child: AllInputDesign(
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.name,
        ),
      ),
    ],
  );
}

Widget emailTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Email',
      ),
      Container(
        height: 40,
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        child: AllInputDesign(
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.name,
        ),
      ),
    ],
  );
}

Widget phoneTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Phone',
      ),
      Container(
        height: 40,
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        child: AllInputDesign(
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.name,
        ),
      ),
    ],
  );
}

Widget industryTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Industry',
      ),
      Container(
        height: 40,
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        child: AllInputDesign(
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.name,
        ),
      ),
    ],
  );
}

Widget businessTypeTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Business Type',
      ),
      Container(
        height: 40,
        width: 180.0,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200],
        ),
        child: AllInputDesign(
          labelText: '(optional)',
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.name,
        ),
      ),
    ],
  );
}

Widget reasoneForContact() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Reason for Contact',
        style: TextStyle(
          fontSize: 15.0,
        ),
      ),
      heightSizedBox(5.0),
      Container(
        margin: EdgeInsets.all(10.0),
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: themeColor,
          ),
        ),
        child: AllInputDesign(
          // controller: model.signUpSecondName,
          cursorColor: themeColor,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          keyBoardType: TextInputType.multiline,
        ),
      ),
    ],
  );
}

Widget submitReqBtn() {
  return Button(
    buttonName: 'Submit',
    btnWidth: double.infinity,
    btnHeight: 50.0,
    btnColor: themeColor,
    color: themeColor,
  );
}
