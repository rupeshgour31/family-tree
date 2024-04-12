import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

SizedBox heightSizedBox(height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthSizedBox(width) {
  return SizedBox(
    width: width,
  );
}

TextStyle labelHintFontStyle = TextStyle(
  color: Colors.black87,
  fontSize: 14.5,
  fontWeight: FontWeight.w600,
  // fontFamily: pCommonRegularFont,
);

Divider dividerCommon({
  double? height,
  double? thickness,
  double? indent,
  double? endIndent,
  Color? color,
}) {
  return Divider(
    height: height,
    thickness: thickness,
    indent: indent,
    endIndent: endIndent,
    color: color,
  );
}

mediaText(context) {
  return MediaQuery.of(context).copyWith(textScaleFactor: 0.9);
}

Color whiteColor = Colors.white;
Color redColor = Color(0xffE01C23);
Color themeColor = Color(0xFF1C719C);

class ToastShow {
  static showToast(String toast) {
    return Fluttertoast.showToast(
      msg: toast,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: redColor.withOpacity(0.6),
      textColor: themeColor,
    );
  }
}
