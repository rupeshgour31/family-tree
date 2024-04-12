import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

var profile;

class DrawerView extends StatefulWidget {
  @override
  _DrawerViewState createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: themeColor,
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            createDrawerHeader(),
            createDrawerBodyItem(),
          ],
        ),
      ),
    );
  }
}

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      color: Color(0xff1B78A7),
      image: DecorationImage(
        image: AssetImage(
          'assets/images/Group 11.png',
        ),
        fit: BoxFit.cover,
      ),
    ),
    child: Positioned(
      left: 20.0,
      child: profile == null
          ? Center(
              // child: CircularProgressIndicator(),
              )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.transparent,
                  child: profile['image'] != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            profile['image'],
                            width: 80,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                        )
                      : Image.asset(
                          'assets/images/Group9204.png',
                          fit: BoxFit.fill,
                        ),
                ),
                // heightSizedBox(10.0),
                Row(
                  children: [
                    Text(
                      profile['name'] ?? '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    widthSizedBox(5.0),
                    Text(
                      profile['last_name'] ?? '',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // heightSizedBox(5.0),
                Text(
                  profile['email'] ?? '',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60,
                  ),
                ),
                Text(
                  profile['mobile'] ?? '',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
    ),
  );
}

Widget createDrawerBodyItem() {
  return Container(
    padding: EdgeInsets.only(left: 25.0, top: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30.0),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Explore',
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        heightSizedBox(10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'SKW Family Tree',
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        heightSizedBox(10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Diwaniya Places Map',
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        heightSizedBox(10.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'News/Event',
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        heightSizedBox(60.0),
        Text(
          'About Us',
          style: TextStyle(
            color: Colors.blueGrey[200],
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        heightSizedBox(10.0),
        Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.blueGrey[200],
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        heightSizedBox(80.0),
        Text(
          'Logout',
          style: TextStyle(
            color: Colors.blueGrey[200],
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
