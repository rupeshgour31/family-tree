import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:tree/Common/validations_field.dart';
import 'package:tree/ConsultantsView/consultant_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget searchField() {
  return Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 106,
          height: 106,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.add, color: Color(0xff1C719C)),
              ),
              Container(
                width: 106,
                height: 106,
                child: CircleAvatar(
                  child: Image.asset('assets/images/Group 72.png'),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Aliza kureshi',
          style: TextStyle(color: Color(0xff549584), fontSize: 20.0),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.location_on_outlined, color: Color(0xff1C719C)),
            Text(
              'Kuwait, 232 Street.',
              style: TextStyle(
                  color: Color(0xff549584),
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    ),
  );
}

Widget myBio(model, context) {
  String _character = 'male';
  return Container(
    margin: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
    width: double.infinity,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AllInputDesign(
            labelText: 'Full Name',
            controller: model.storyUsernameController,
            validatorFieldValue: validateUsername,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          heightSizedBox(16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Date Of Birth',
                      style:
                          TextStyle(color: Color(0xff549584), fontSize: 18.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => model.pickEventDate(context),
                    child: Container(
                      height: 45,
                      width: 120.0,
                      child: Center(
                        child: Text(
                          '${DateFormat('dd MM yyyy').format(model.selectEventDate)}',
                          style: TextStyle(
                            color: Color(0xff1C719C),
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.5,
                    width: 90.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Married Date',
                      style:
                          TextStyle(color: Color(0xff549584), fontSize: 18.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => model.pickEventDate(context),
                    child: Container(
                      height: 45,
                      width: 120.0,
                      child: Center(
                        child: Text(
                          '${DateFormat('dd MM yyyy').format(model.selectEventDate)}',
                          style: TextStyle(
                            color: Color(0xff1C719C),
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.5,
                    width: 90.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          heightSizedBox(16.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Gender',
              style: TextStyle(color: Color(0xff549584), fontSize: 18.0),
            ),
          ),
          heightSizedBox(5.0),
          Row(
            children: <Widget>[
              Radio(
                value: 'male',
                activeColor: model.male ? Color(0xff98DF86) : whiteColor,
                groupValue: model.genderType,
                onChanged: (value) {
                  model.gender("male");
                },
              ),
              Text(
                'Male',
                style: TextStyle(fontSize: 18.0, color: Color(0xff1C719C)),
              ),
              Radio(
                value: 'female',
                activeColor: model.female ? Color(0xff98DF86) : whiteColor,
                groupValue: model.genderType,
                onChanged: (value) {
                  model.gender("female");
                },
              ),
              Text(
                'Female',
                style: TextStyle(fontSize: 18.0, color: Color(0xff1C719C)),
              ),
            ],
          ),
          AllInputDesign(
            labelText: 'Son of / Daughter of ',
            controller: model.storyChildrenController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          AllInputDesign(
            labelText: 'Address',
            controller: model.storyAddressController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          AllInputDesign(
            labelText: 'Qualification',
            controller: model.storyQualificationController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          AllInputDesign(
            labelText: 'Occupations',
            controller: model.storyOccupationController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          heightSizedBox(20.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Biography',
              style: TextStyle(color: Color(0xff549584), fontSize: 18.0),
            ),
          ),
          heightSizedBox(20.0),
          Container(
            margin: EdgeInsets.only(bottom: 100.0),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: AllInputDesign(
              controller: model.storyBiographyController,
              keyBoardType: TextInputType.multiline,
              maxLine: 15,
              hintText:
                  'If you’re offered a seat on arocket ship, don’t ask what seat! JuBeGive us any chance and well take it. Give us any chance and a well tak gonna make our best dreams come true? Flying away oh on a wing and a real prayer, oh yes and a pr',
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              cursorColor: Color(0xff1C719C),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget BusinessView(model, videoList) {
  return Container(
    margin: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10.0),
    width: double.infinity,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AllInputDesign(
            labelText: 'Industry',
            controller: model.storyUsernameController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          AllInputDesign(
            labelText: 'Office Address ',
            controller: model.storyChildrenController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          AllInputDesign(
            labelText: 'Services',
            controller: model.storyAddressController,
            keyBoardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          heightSizedBox(20.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'About Company',
              style: TextStyle(color: Color(0xff549584), fontSize: 18.0),
            ),
          ),
          heightSizedBox(20.0),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: AllInputDesign(
              controller: model.storyBiographyController,
              keyBoardType: TextInputType.multiline,
              maxLine: 15,
              hintText:
                  'If you’re offered a seat on arocket ship, don’t ask what seat! JuBeGive us any chance and well take it. Give us any chance and a well tak gonna make our best dreams come true? Flying away oh on a wing and a real prayer, oh yes and a pr',
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              cursorColor: Color(0xff1C719C),
            ),
          ),
          heightSizedBox(30.0),
          Text(
            'Office Place',
            style: TextStyle(color: Color(0xff549584), fontSize: 18.0),
          ),
          heightSizedBox(20.0),
          Container(
            margin: EdgeInsets.only(bottom: 100.0),
            width: double.infinity,
            height: 130.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: videoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 160.0,
                    height: 100.0,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff98DF86), width: 3.0),
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Group 107.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    ),
  );
}

Widget videoView(videoList, context) {
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 60.0),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.6,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: videoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            width: double.infinity,
            height: 130,
            color: Color(0xff98DF86).withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 168,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff707070), width: 1.0),
                      borderRadius: BorderRadius.circular(28.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Group 107.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, right: 12.0, bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        videoList[index]['title'],
                        style: TextStyle(
                            color: Color(0xff1C719C),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        videoList[index]['type'],
                        style: TextStyle(
                            color: Color(0xff1C719C),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      heightSizedBox(10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            videoList[index]['date'],
                            style: TextStyle(
                                color: Color(0xff1C719C),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            videoList[index]['time'],
                            style: TextStyle(
                                color: Color(0xff1C719C),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
  );
}

Widget galleryView(context, videoList) {
  return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      padding: EdgeInsets.all(6.0),
      child: new GridView.builder(
          controller: new ScrollController(keepScrollOffset: false),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: videoList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Container(
                width: 125.0,
                height: 125.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white),
                child: Center(
                  child: Container(
                    width: 97.0,
                    height: 114.0,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff98DF86), width: 2.0),
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Group 107.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }));
}
