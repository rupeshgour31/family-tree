import 'dart:convert';

import 'package:tree/api/request_manager.dart';
import 'package:http/http.dart' as http;

class WSSignupRequest extends APIRequest {
  String first_name;
  String second_name;
  String third_name;
  String fourth_name;
  String fifth_name;
  String user_name;
  String user_email;
  String password;

  WSSignupRequest(
      {endPoint,
      this.first_name,
      this.second_name,
      this.third_name,
      this.fourth_name,
      this.fifth_name,
      this.user_name,
      this.user_email,
      this.password})
      : super(endPoint + "signup") {}

  @override
  Map<String, Object> getParams() {
    Map<String, Object> params = Map<String, Object>();
    params["first_name"] = this.first_name;
    params["second_name"] = this.second_name;
    params["third_name"] = this.third_name;
    params["fourth_name"] = this.fourth_name;
    params["fifth_name"] = this.fifth_name;
    params["user_name"] = this.user_name;
    params["user_email"] = this.user_email;
    params["password"] = this.password;
    params["device_type"] = "Android";
    return params;
  }

  @override
  String parseResponse(http.Response response, bool showLog) {
    super.parseResponse(response, showLog);

    String retVal = "Problem occured in parsing the response";
    if (response.statusCode == 200) {
      try {
        Map<String, Object> responseData = jsonDecode(response.body);

        if (responseData.containsKey("status")) {
          this.response.addEntries(responseData.entries);
          retVal = "";
        }
      } catch (e) {
        retVal = e.toString();
      }
    }

    return retVal;
  }
}
