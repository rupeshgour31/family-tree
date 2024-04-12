import 'dart:convert';

import 'package:tree/api/request_manager.dart';
import 'package:http/http.dart' as http;

class WSEventDetailRequest extends APIRequest {
  String event_id;
  String token_key;

  WSEventDetailRequest({endPoint, this.event_id, this.token_key})
      : super(endPoint + "event_detail") {}

  @override
  Map<String, Object> getParams() {
    Map<String, Object> params = Map<String, Object>();
    params["event_id"] = this.event_id;
    params["token_key"] = this.token_key;
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
