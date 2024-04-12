import 'dart:convert';

import 'package:tree/api/request_manager.dart';
import 'package:http/http.dart' as http;

class WSAddEventRequest extends APIRequest {
  String user_id;
  String event_name;
  String event_date;
  String description;
  String venue;
  String product_img;

  WSAddEventRequest(
      {endPoint,
      this.user_id,
      this.event_name,
      this.event_date,
      this.description,
      this.venue,
      this.product_img})
      : super(endPoint + "add_event") {}

  @override
  Map<String, Object> getParams() {
    Map<String, Object> params = Map<String, Object>();
    params["user_id"] = this.user_id;
    params["event_name"] = this.event_name;
    params["event_date"] = this.event_date;
    params["description"] = this.description;
    params["venue"] = this.venue;
    params["product_img"] = this.product_img;
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
