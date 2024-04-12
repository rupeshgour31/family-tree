import 'dart:convert';

import 'package:tree/Common/common_widgets.dart';
import 'package:tree/api/api_manager_Form.dart';
import 'package:tree/api/request/WSSignInRequest.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInModel extends ChangeNotifier {
  final TextEditingController signInUsernameController =
      TextEditingController();
  final TextEditingController signInPasswordController =
      TextEditingController();

  signInRequest(context) async {
    Navigator.pushNamed(context, '/dashboard');
    // var otpRequest = WSSignInRequest(
    //   endPoint: APIManagerForm.endpoint,
    //   user_name: signInUsernameController.text,
    //   password: signInPasswordController.text,
    // );
    // print("signin===callinh");
    // await APIManagerForm.performRequest(otpRequest, showLog: true);
    // print("signin response ${otpRequest.response}");
    // try {
    //   var dataResponse = otpRequest.response;
    //   if (dataResponse['status'] == "true") {
    //     SharedPreferences prefs = await SharedPreferences.getInstance();
    //     prefs.setString(
    //       'user_id',
    //       json.encode(
    //         dataResponse['id'],
    //       ),
    //     );
    //     prefs.setString(
    //       'token',
    //       json.encode(
    //         dataResponse['remember_token'],
    //       ),
    //     );

    //     Navigator.pushNamed(context, '/dashboard');
    //   } else {
    //     var messages = dataResponse['message'];
    //     showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           title: new Text(messages),
    //           content: Row(
    //             children: [
    //               Icon(
    //                 Icons.error_outline,
    //                 color: Colors.red,
    //               ),
    //               widthSizedBox(5.0),
    //               Text(
    //                 messages,
    //                 textAlign: TextAlign.center,
    //                 maxLines: 2,
    //                 // overflow: TextOverflow.ellipsis,
    //               ),
    //             ],
    //           ),
    //           actions: <Widget>[
    //             FlatButton(
    //               child: new Text("OK"),
    //               onPressed: () {
    //                 Navigator.of(context).pop();
    //               },
    //             ),
    //           ],
    //         );
    //       },
    //     );
    //   }
    // } catch (e) {
    //   print('Error: ${e.toString()}');
    // }
  }
}
