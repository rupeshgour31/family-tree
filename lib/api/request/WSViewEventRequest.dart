import 'dart:convert';

import 'package:tree/api/request_manager.dart';
import 'package:http/http.dart' as http;

class WSViewEventRequest extends APIRequest {
  WSViewEventRequest({endPoint}) : super(endPoint + "view_event") {}

  @override
  Map<String, Object> getParams() {
    Map<String, Object> params = Map<String, Object>();
    params["device_token"] = "23823728373332837287328222";
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
