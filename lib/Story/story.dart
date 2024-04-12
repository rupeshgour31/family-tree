import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Drawer/drawer.dart';
import 'package:tree/Story/story_model.dart';
import 'package:tree/Story/story_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  List videoList = [
    {
      'title': 'Birthday Celebration with family',
      'type': '(After Long Time)',
      'date': 'Posted on : Tuesday',
      'time': '2:30 Sec',
    },
    {
      'title': 'Visited Grainy Place',
      'type': '(After Long Time)',
      'date': 'Posted on : Wednesday',
      'time': '12:30 min',
    },
    {
      'title': 'Aamir Ring Ceremony ',
      'type': '(After Long Time)',
      'date': 'Posted on : Thursday',
      'time': '5:30 Sec',
    },
    {
      'title': 'Ashim Ceremony',
      'type': '(After Long Time)',
      'date': 'Posted on : Friday',
      'time': '4:50 Sec',
    },
    {
      'title': 'Natish Wedding',
      'type': '(After Long Time)',
      'date': 'Posted on : Saturday',
      'time': '2:30 Sec',
    },
    {
      'title': 'Ashim Ceremony',
      'type': '(After Long Time)',
      'date': 'Posted on : Sunday',
      'time': '2:30 Sec',
    },
    {
      'title': 'Natish Wedding',
      'type': '(After Long Time)',
      'date': 'Posted on : Monday',
      'time': '2:30 Sec',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<StoryModel>(builder: (context, model, _) {
      return MediaQuery(
          data: mediaText(context),
          child: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                flexibleSpace: Image(
                  image: AssetImage('assets/images/Group 11.png'),
                  fit: BoxFit.cover,
                ),
                backgroundColor: Color(0xffEEF3F5),
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
                        'My Stories',
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
              ),
              drawer: DrawerView(),
              backgroundColor: Color(0xffEEF3F5),
              body: Column(
                children: <Widget>[
                  searchField(),
                  heightSizedBox(15.0),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.07,
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      flexibleSpace: Image(
                        image: AssetImage('assets/images/Group 11.png'),
                        fit: BoxFit.cover,
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      bottom: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Color(0xff549584),
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff98DF86)),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Color(0xff1C719C),
                        tabs: [
                          Tab(
                            child: Text(
                              "My Bio",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Business info",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Video",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Gallery",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Client Request",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        myBio(model, context),
                        BusinessView(model, videoList),
                        videoView(videoList, context),
                        galleryView(context, videoList),
                        videoView(videoList, context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    });
  }
}
