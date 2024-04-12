import 'package:tree/Common/button.dart';
import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Event/CreateEvent/create_event_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CreateNewEventShow extends StatelessWidget {
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
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 130.0),
                  padding: EdgeInsets.only(top: 20),
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
                        topDetailBar(context),
                        heightSizedBox(15.0),
                        detailsOfEvent(context, model),
                        heightSizedBox(30.0),
                        Button(
                          buttonName: 'Next >',
                          btnWidth: double.infinity,
                          btnHeight: 45.0,
                          color: themeColor,
                          btnColor: themeColor,
                        ),
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

Widget topDetailBar(context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 27.0,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 27.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Text(
          'Meeting according  with design team in national park.',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    ],
  );
}

Widget detailsOfEvent(context, model) {
  return Padding(
    padding: EdgeInsets.only(left: 25.0, right: 25.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rowView(
          'assets/icons/calender.png',
          'Created By',
          'none',
        ),
        heightSizedBox(8.0),
        dividerCommon(
          height: 1.0,
          indent: 1.0,
          thickness: 1.5,
        ),
        heightSizedBox(8.0),
        rowView(
          'assets/icons/calender.png',
          'Event Date',
          '${DateFormat('yyyy-MM-dd').format(model.selectEventDate)}',
        ),
        heightSizedBox(8.0),
        dividerCommon(
          height: 1.0,
          indent: 1.0,
          thickness: 1.5,
        ),
        heightSizedBox(8.0),
        rowView(
          'assets/icons/describe.png',
          'Description',
          model.createEventDescriptionController.text,
        ),
        heightSizedBox(8.0),
        dividerCommon(
          height: 1.0,
          indent: 1.0,
          thickness: 1.5,
        ),
        heightSizedBox(8.0),
        rowView(
          'assets/icons/members.png',
          'Members',
          'none',
        ),
        heightSizedBox(8.0),
        dividerCommon(
          height: 1.0,
          indent: 1.0,
          thickness: 1.5,
        ),
        heightSizedBox(8.0),
        rowView(
          'assets/icons/tag.png',
          'Make it',
          'none',
        ),
      ],
    ),
  );
}

Widget rowView(String icon, text, showData) {
  print(showData);
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Image.asset(
            icon,
            color: Colors.grey,
            height: 20.0,
            width: 20.0,
          ),
          widthSizedBox(12.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      heightSizedBox(10.0),
      Padding(
        padding: EdgeInsets.only(left: 35.0),
        child: Text(
          showData,
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
      ),
    ],
  );
}
