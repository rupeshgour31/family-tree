import 'package:tree/Common/common_widgets.dart';
import 'package:tree/api/api_manager_Form.dart';
import 'package:tree/api/request/WSViewEventRequest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'event_and_news_list_model.dart';
import 'event_and_news_list_widgets.dart';

class TabBar1 extends StatefulWidget {
  @override
  _TabBar1State createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  void initState() {
    eventViewRequest(context);
  }

  var upcommingEventList = [];
  var featuredEventList = [];

  eventViewRequest(context) async {
    var otpRequest = WSViewEventRequest(endPoint: APIManagerForm.endpoint);
    print("eventView===callinh");
    print(otpRequest);
    await APIManagerForm.performRequest(otpRequest, showLog: true);

    try {
      var dataResponse = otpRequest.response;
      if (dataResponse['status'] == "true") {
        // Map<String, Object> data = dataResponse['data'];
        // print("eventView===data");
        //
        // setState(() {
        //   upcommingEventList = data['Upcoming_event'];
        //   featuredEventList = data['Feadured_Event'];
        //   print(">?>slider?>>>/");
        //   print(upcommingEventList);
        // });
        // print(data);
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

  @override
  Widget build(BuildContext context) {
    return Consumer<EventModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Group 11.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      featuredEventsTitle(),
                      heightSizedBox(15.0),
                      featuredEventView(context, featuredEventList),
                      heightSizedBox(15.0),
                      upcomingEventsTitle(),
                      upcomingEventsView(upcommingEventList),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
