import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Event/EventAndNewsList/event_and_news_list.dart';
import 'package:tree/Explore/explore.dart';
import 'package:tree/Story/story.dart';
import 'package:tree/Tree/tree.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  dynamic currentTab;
  Widget currentPage = Explore();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  Dashboard({Key? key, this.currentTab}) {
    if (currentTab != null) {
      currentTab = currentTab;
    } else {
      currentTab = 0;
    }
  }

  @override
  _DashboardState createState() {
    return _DashboardState(currentTab);
  }
}

class _DashboardState extends State<Dashboard> {
  final currentTab;
  _DashboardState(this.currentTab);
  initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  @override
  void didUpdateWidget(Dashboard oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(
      () {
        widget.currentTab = tabItem;
        switch (tabItem) {
          case 0:
            widget.currentPage = Explore();
            break;
          case 1:
            widget.currentPage = Tree();
            break;
          case 2:
            null;
            break;
          case 3:
            widget.currentPage = Story();
            break;
          case 4:
            widget.currentPage = Event();
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 0.5,
            ),
          ],
          shape: BoxShape.circle,
          color: whiteColor,
        ),
        child: FloatingActionButton(
          backgroundColor: whiteColor,
          onPressed: () {},
          tooltip: 'Increment',
          child: Image.asset(
            "assets/images/icons8-location-100.png",
            color: Colors.blue,
          ),
          elevation: 2.0,
        ),
      ),
      key: widget.scaffoldKey,
      body: Stack(
        children: <Widget>[
          widget.currentPage,
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: themeColor,
              ),
              child: BottomNavigationBar(
                showUnselectedLabels: true,
                backgroundColor: themeColor,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Color(0xff98DF86),
                unselectedItemColor: whiteColor,
                currentIndex: widget.currentTab,
                onTap: (int i) {
                  this._selectTab(i);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/icons8-connected-people-100.png",
                      height: 25,
                      color: widget.currentTab == 0
                          ? Color(0xff98DF86)
                          : whiteColor,
                    ),
                    label: 'Explore',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/icons8-tree-64.png",
                      height: 27,
                      color: widget.currentTab == 1
                          ? Color(0xff98DF86)
                          : whiteColor,
                    ),
                    label: 'Tree',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.history,
                      size: 0.4,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/icons8-change-user-40 (1).png",
                      height: 25,
                      color: widget.currentTab == 3
                          ? Color(0xff98DF86)
                          : whiteColor,
                    ),
                    label: 'Story',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icons/icons8-event-accepted-64.png",
                      height: 25,
                      color: widget.currentTab == 4
                          ? Color(0xff98DF86)
                          : whiteColor,
                    ),
                    label: 'Event',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
