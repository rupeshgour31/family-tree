import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget eventTopAppbar(context) {
  return Stack(
    children: [
      Container(
        height: 350,
        width: double.infinity,
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            'assets/images/Group 107.png',
          ),
        ),
      ),
      Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: themeColor.withOpacity(0.5),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: 260,
          left: MediaQuery.of(context).size.height * 0.2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
              child: Image.asset(
                'assets/images/Oval 2.png',
                fit: BoxFit.cover,
              ),
            ),
            widthSizedBox(8.0),
            Text(
              'created by- development',
              style: TextStyle(
                color: whiteColor,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 60,
          right: 25.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: whiteColor,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    ],
  );
}
