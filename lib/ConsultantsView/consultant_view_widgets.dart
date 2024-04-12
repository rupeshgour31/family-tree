import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var consultDetails;
Widget topBarDetails(context, consultViewDetail) {
  consultDetails = consultViewDetail;
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
        padding: EdgeInsets.only(top: 250, left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
            ),
            widthSizedBox(20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  consultDetails['name'],
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  consultDetails['title'],
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                heightSizedBox(15.0),
                Text(
                  consultDetails['development'],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 60,
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    ],
  );
}

Widget membershipAndProfile(context) {
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Member Since ',
          style: TextStyle(
            color: themeColor.withOpacity(0.85),
            fontSize: 15.0,
          ),
        ),
        Container(
          height: 30,
          width: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'View Profile',
              style: TextStyle(
                color: themeColor,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget overviewShareCommentFav() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview: ',
          style: TextStyle(
            color: themeColor,
            fontSize: 15.0,
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.share_outlined,
                size: 25,
                color: Color(0xff98DF86),
              ),
              onPressed: null,
            ),
            IconButton(
              icon: SizedBox(
                height: 40.0,
                width: 40.0,
                child: Image.asset(
                  'assets/icons/icons8-topic-104.png',
                  color: Color(0xff98DF86),
                  fit: BoxFit.fill,
                ),
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 25,
                color: Color(0xff98DF86),
              ),
              onPressed: null,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget descriptionView() {
  return Padding(
    padding: EdgeInsets.only(
      left: 25.0,
      right: 25.0,
    ),
    child: Text(
      consultDetails['description'],
      style: TextStyle(
        color: themeColor,
        fontSize: 14.0,
      ),
      textAlign: TextAlign.start,
    ),
  );
}

Widget services() {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: TextStyle(
            color: themeColor,
            fontSize: 15.0,
          ),
          textAlign: TextAlign.start,
        ),
        for (int i = 0; i < consultDetails['services'].length; i++)
          Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            height: 35.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: Color(0xff98DF86),
            ),
            child: Text(
              consultDetails['services'][i],
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
      ],
    ),
  );
}

Widget officeGallery() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          'OFFICE GALLERY ',
          style: TextStyle(
            fontSize: 16.0,
            color: themeColor,
          ),
        ),
      ),
      heightSizedBox(10.0),
      Container(
        height: 150.0,
        width: double.infinity,
        margin: EdgeInsets.only(left: 10.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: consultDetails['services'].length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right: 10.0),
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themeColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                // child: Image(
                //   image: NetworkImage(
                //     toursDetails['tour_detail']
                //     ['img_url'] +
                //         '/' +
                //         split[index],
                //   ),
                //   fit: BoxFit.fill,
                // ),
              ),
            );
          },
        ),
      ),
    ],
  );
}

Widget requestToservice(context) {
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '200+ Company Size',
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            '/requestService',
          ),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 7),
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bgthemecolor.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Request For Service',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 120),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: themeColor.withOpacity(0.35),
                      blurRadius: 3.0,
                      spreadRadius: 2.5,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  border: Border.all(
                    color: whiteColor,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                  color: themeColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
