import 'package:tree/Common/common_widgets.dart';
import 'package:tree/RequestService/request_service_widgets.dart';
import 'package:flutter/material.dart';

class RequestService extends StatefulWidget {
  @override
  _RequestServiceState createState() => _RequestServiceState();
}

class _RequestServiceState extends State<RequestService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Color(0xff236313).withOpacity(0.8),
                  Color(0xff98DF86),
                ],
                stops: [0.2, 0.8],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 35.0, top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 27.0,
                    color: whiteColor,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  'Request For Service',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            margin: EdgeInsets.only(left: 35.0, right: 35.0, top: 130.0),
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
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
                  fullNameTextField(),
                  heightSizedBox(10.0),
                  emailTextField(),
                  heightSizedBox(10.0),
                  phoneTextField(),
                  heightSizedBox(10.0),
                  industryTextField(),
                  heightSizedBox(10.0),
                  businessTypeTextField(),
                  heightSizedBox(15.0),
                  reasoneForContact(),
                  heightSizedBox(45.0),
                  submitReqBtn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
