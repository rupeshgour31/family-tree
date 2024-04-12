import 'dart:async';

import 'package:tree/DashBoard/dashboard.dart';
import 'package:tree/WelcomePage/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var id;
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => getPref());
  }

  void getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    id = preferences.getString("user_id");
    print('=============================================');
    print(id);
    // Constants.showToast(id);
    if (id != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Dashboard(),
        ),
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => WelcomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.65,
          bottom: 35.0,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Group 10.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'MY SERVICE SKW',
              style: TextStyle(
                color: Color(0xff1C719C),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FAMILY TREE',
              style: TextStyle(
                color: Color(0xff89A309),
                fontSize: 18.0,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
