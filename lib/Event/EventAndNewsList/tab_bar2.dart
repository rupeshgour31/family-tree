import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'event_and_news_list_model.dart';
import 'event_and_news_list_widgets.dart';

class TabBar2 extends StatefulWidget {
  @override
  _TabBar2State createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  List allnewsList = [
    {
      'title': 'Natash Wedding',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Shimar Wedding',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Aamir Ring Ceremony ',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Ashim Ceremony',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Natish Wedding',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Ashim Ceremony',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
    {
      'title': 'Natish Wedding',
      'type': 'Sister in law',
      'place': '206, sagar palace, kuwait',
      'date': '19 Aug',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<EventModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: Scaffold(
            body: Container(
              padding: EdgeInsets.all(25.0),
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
                child: Column(
                  children: [
                    allnewsTitle(),
                    allnewsView(allnewsList, context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
