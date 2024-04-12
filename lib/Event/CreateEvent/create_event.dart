import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Event/CreateEvent/create_event_model.dart';
import 'package:tree/Event/CreateEvent/create_event_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CreateEventModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff57B46F).withOpacity(0.8),
                        Color(0xff98DF86).withOpacity(0.8),
                      ],
                      stops: [0.2, 0.8],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      tileMode: TileMode.repeated,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 35.0,
                    top: 80.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 27.0,
                          color: whiteColor,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      widthSizedBox(MediaQuery.of(context).size.width * 0.2),
                      Text(
                        'Create Event',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 130.0),
                  padding: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                    ),
                    color: whiteColor,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addressAddTitleAndMessa(context),
                        heightSizedBox(15.0),
                        descriptions(context, model),
                        heightSizedBox(15.0),
                        eventDate(context, model),
                        heightSizedBox(15.0),
                        tagMember(context, model),
                        heightSizedBox(60.0),
                        nextBtn(context, model),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
