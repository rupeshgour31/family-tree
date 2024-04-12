import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Rectangle 13.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Group 2.png',
              ),
              Text(
                'WELCOME TO FAMILY TREE',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              heightSizedBox(12.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: Text(
                  'Lets pack your Bags and exporter the adventure tours with divind36 team & diving coach.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18.0,
                    // decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
              ),
              heightSizedBox(20.0),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  '/signIn',
                ),
                child: Text(
                  'ENTER',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
