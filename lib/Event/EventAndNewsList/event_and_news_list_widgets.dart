import 'package:tree/Common/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget featuredEventsTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Featured Events',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
        ),
      ),
      Text(
        'View All',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  );
}

Widget allnewsTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'All News',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
        ),
      ),
      Text(
        'View All',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  );
}

Widget featuredEventView(context, featuredEventList) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(
      context,
      '/eventView',
    ),
    child: featuredEventList.length == 0
        ? Center(
            child: Text('OOps ! No data Found in detail'),
          )
        : Stack(
            children: [
              Container(
                height: 200.0,
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff98DF86).withOpacity(0.35),
                      blurRadius: 3.0,
                      spreadRadius: 2.5,
                      offset: Offset(0.2, 4.0),
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 200,
                  child: featuredEventList[0] == null
                      ? Container()
                      : Image.network(
                          featuredEventList[0]['image'],
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              Container(
                height: 50,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Path 190.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '19 ',
                      style: TextStyle(
                        fontSize: 18,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      ' AUG',
                      style: TextStyle(
                        fontSize: 18,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0, left: 5, right: 25),
                padding: EdgeInsets.only(left: 10.0),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: whiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(''),
                        Container(
                          height: 30.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/bg.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Attending',
                              style: TextStyle(
                                color: themeColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      featuredEventList[0] == null
                          ? ''
                          : featuredEventList[0]['event_name'],
                      style: TextStyle(
                        color: themeColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sister in law',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Event Address : Kuwait, 232 Street.',
                      style: TextStyle(
                        color: themeColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
  );
}

Widget upcomingEventsTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Upcoming Events',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
        ),
      ),
      Text(
        'View All',
        style: TextStyle(
          color: themeColor,
          fontSize: 18.0,
          decoration: TextDecoration.underline,
        ),
      ),
    ],
  );
}

Widget upcomingEventsView(upcomingEvents) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    height: 320.0,
    width: 550,
    padding: EdgeInsets.only(bottom: 60.0),
    child: (upcomingEvents.length == 0)
        ? Center(
            child: Text('OOps ! No data Found in detail'),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: upcomingEvents.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 12.0,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 120.0,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90.0,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                upcomingEvents[index]['image'],
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        widthSizedBox(10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                upcomingEvents[index]['event_name'],
                                style: TextStyle(
                                  color: themeColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'Event subtitle',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              'Place of event',
                              style: TextStyle(
                                color: themeColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              // overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 50,
                      width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Path 189.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            upcomingEvents[index]['sdate'],
                            style: TextStyle(
                              fontSize: 14,
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
  );
}

Widget allnewsView(allnewsList, ctx) {
  return Container(
    margin: EdgeInsets.only(top: 10.0, bottom: 80.0),
    height: MediaQuery.of(ctx).size.height * 0.68,
    width: 550,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: allnewsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 10.0,
              ),
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              height: 120.0,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  )
                ],
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 90.0,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/1000x-1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  widthSizedBox(10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          allnewsList[index]['title'],
                          style: TextStyle(
                            color: themeColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          allnewsList[index]['type'],
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        allnewsList[index]['place'],
                        style: TextStyle(
                          color: themeColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.fade,
                        // overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 50,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Path 189.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      allnewsList[index]['date'],
                      style: TextStyle(
                        fontSize: 18,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}
