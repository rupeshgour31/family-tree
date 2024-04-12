import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Drawer/drawer.dart';
import 'package:tree/Explore/explore_model.dart';
import 'package:tree/Explore/explore_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
    // return Consumer<ExploreModel>(
    //   builder: (context, model, _) {
    //     return MediaQuery(
    //       data: mediaText(context),
    //       child: DefaultTabController(
    //         length: 3,
    //         child: Scaffold(
    //           appBar: AppBar(
    //             automaticallyImplyLeading: false,
    //             title: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Builder(
    //                     builder: (context) => IconButton(
    //                       icon: Image.asset(
    //                         "assets/images/Group 28.png",
    //                         height: 18,
    //                         width: 21,
    //                       ),
    //                       onPressed: () => Scaffold.of(context).openDrawer(),
    //                     ),
    //                     // ),
    //                   ),
    //                   Text(
    //                     'Explore',
    //                     style: TextStyle(
    //                       fontSize: 18.0,
    //                       fontWeight: FontWeight.w600,
    //                       color: Color(0xff549584),
    //                       decoration: TextDecoration.none,
    //                       fontFamily: 'Montserrat',
    //                     ),
    //                   ),
    //                   Row(
    //                     children: [
    //                       IconButton(
    //                         icon: Icon(
    //                           Icons.search_sharp,
    //                           color: Colors.black,
    //                         ),
    //                         onPressed: null,
    //                       ),
    //                       IconButton(
    //                         icon: Icon(
    //                           Icons.notification_important_rounded,
    //                           color: Colors.black,
    //                         ),
    //                         onPressed: null,
    //                       ),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             ),
    //             backgroundColor: Colors.white,
    //             elevation: 0,
    //             centerTitle: false,
    //             titleSpacing: 0,
    //           ),
    //           drawer: DrawerView(),
    //           body: Container(
    //             width: double.infinity,
    //             height: double.infinity,
    //             decoration: BoxDecoration(
    //               image: DecorationImage(
    //                 image: AssetImage(
    //                   'assets/images/Group 11.png',
    //                 ),
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             child: SingleChildScrollView(
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   searchField(),
    //                   heightSizedBox(10.0),
    //                   scrollableTab(),
    //                   heightSizedBox(10.0),
    //                   // tabBottom(),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Image(
            image: AssetImage('assets/images/Group 11.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
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
                  'Explore',
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
        backgroundColor: Colors.grey[300],
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
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Color(0xff549584),
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Consultant",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Member Activity",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
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
                  exploreView(allnewsList, context),
                  exploreView(allnewsList, context),
                  exploreView(allnewsList, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
