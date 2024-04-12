import 'package:tree/Common/common_widgets.dart';
import 'package:tree/api/api_manager_Form.dart';
import 'package:tree/api/request/WSSignupRequest.dart';
import 'package:flutter/material.dart';

class SignUpModel extends ChangeNotifier {
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpFirstName = TextEditingController();
  TextEditingController signUpSecondName = TextEditingController();
  TextEditingController signUpThirdName = TextEditingController();
  TextEditingController signUpFourthName = TextEditingController();
  TextEditingController signUpFifthName = TextEditingController();
  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  bool value = false;

  void termAndCondition() {
    value = !value;
    notifyListeners();
  }

  signUpRequest(context) async {
    var otpRequest = WSSignupRequest(
      endPoint: APIManagerForm.endpoint,
      first_name: signUpFirstName.text ?? '',
      second_name: signUpSecondName.text ?? '',
      third_name: signUpThirdName.text ?? '',
      fourth_name: signUpFourthName.text ?? '',
      fifth_name: signUpFifthName.text ?? '',
      user_name: signUpUserName.text ?? '',
      user_email: signUpEmail.text ?? '',
      password: signUpPassword.text ?? '',
    );
    print("signup===callinh");
    print(otpRequest);
    await APIManagerForm.performRequest(otpRequest, showLog: true);

    try {
      var dataResponse = otpRequest.response;
      if (dataResponse['status'] == "true") {
        //   SharedPreferences prefs = await SharedPreferences.getInstance();

        Navigator.pushNamed(context, '/signIn');
      } else {
        var messages = dataResponse['message'];
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text('messages'),
              content: Row(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  ),
                  widthSizedBox(5.0),
                  Text(
                    'messages',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              actions: <Widget>[

              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}
