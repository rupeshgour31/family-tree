import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Drawer/drawer.dart';
import 'package:tree/Event/EventAndNewsList/tab_bar1.dart';
import 'package:tree/Event/EventAndNewsList/tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'event_and_news_list_model.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Consumer<EventModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: FloatingActionButton(
                  backgroundColor: themeColor,
                  onPressed: () => Navigator.pushNamed(
                    context,
                    '/createNewEvent',
                  ),
                  tooltip: 'Increment',
                  heroTag: '',
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                  elevation: 2.0,
                ),
              ),
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                flexibleSpace: Image(
                  image: AssetImage('assets/images/Group 11.png'),
                  fit: BoxFit.cover,
                ),
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          icon: Image.asset(
                            "assets/images/Group 28.png",
                            height: 18,
                            width: 21,
                          ),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                        // ),
                      ),
                      Text(
                        'News/Events',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff549584),
                          decoration: TextDecoration.none,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notification_important_rounded,
                          color: Colors.black,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                elevation: 0,
                centerTitle: false,
                titleSpacing: 0,
                bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff98DF86),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xff549584),
                  tabs: [
                    Container(
                      width: 120.0,
                      height: 31,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xff1C719C),
                          width: 0.5,
                        ),
                      ),
                      child: Tab(
                        child: Text(
                          'EVENT',
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      height: 31,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xff1C719C),
                          width: 0.5,
                        ),
                      ),
                      child: Tab(
                        child: Text(
                          'NEWS',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              drawer: DrawerView(),
              body: TabBarView(
                children: [
                  TabBar1(),
                  TabBar2(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
