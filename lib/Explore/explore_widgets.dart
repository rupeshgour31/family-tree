import 'package:tree/Common/common_widgets.dart';
import 'package:tree/ConsultantsView/consultant_view.dart';
import 'package:flutter/material.dart';

Widget searchField() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 55.0,
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(
        top: 10.0,
        left: 25.0,
        right: 25.0,
      ),
      // padding: EdgeInsets.all(0.5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: themeColor),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2.5,
            offset: Offset(0.0, 3.0),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search course, packages or instructor",
            ),
            Icon(
              Icons.search,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget exploreView(allnewsList, ctx) {
  return Container(
    margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 50.0),
    height: MediaQuery.of(ctx).size.height * 0.68,
    width: 550,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: allnewsList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(ctx).pushNamed(
              ConsultantView.routeName,
              arguments: allnewsList[index],
            );
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 30.0,
                ),
                padding: EdgeInsets.only(
                  top: 25.0,
                  left: 10.0,
                  right: 15.0,
                ),
                height: 300.0,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 80,
                          child: Image.asset(
                            'assets/images/engagement-party.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        widthSizedBox(8.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              allnewsList[index]['title'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.fade,
                            ),
                            Text(
                              allnewsList[index]['type'],
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              allnewsList[index]['place'],
                              style: TextStyle(
                                color: themeColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              // overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                        widthSizedBox(8.0),
                        Text(
                          // allnewsList[index]['place'],
                          'Regular',
                          style: TextStyle(
                            color: themeColor.withOpacity(0.7),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            allnewsList[index]['place'],
                            style: TextStyle(
                              color: themeColor,
                              fontSize: 20.0,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                          ),
                          heightSizedBox(5.0),
                          Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/engagement-party.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.share_outlined,
                            color: Color(0xff98DF86),
                            size: 28.0,
                          ),
                          onPressed: null,
                        ),
                        Text(
                          'Promot',
                          style: TextStyle(
                            color: Color(0xff98DF86),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                          // overflow: TextOverflow.fade,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 30.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: themeColor,
                    border: Border.all(
                      color: Color(0xff98DF86),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
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
          ),
        );
      },
    ),
  );
}
