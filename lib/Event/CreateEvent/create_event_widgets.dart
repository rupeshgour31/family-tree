import 'package:tree/Common/button.dart';
import 'package:tree/Common/common_widgets.dart';
import 'package:tree/Common/input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget addressAddTitleAndMessa(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'At',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          widthSizedBox(8.0),
          Container(
            height: 45.0,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
            child: Center(
              child: Text(
                'Enter address/location',
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      heightSizedBox(20.0),
      Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        height: 65.0,
        width: double.infinity,
        color: Colors.grey[200],
        child: Center(
          child: Text(
            'Meeting according with Design team in central park.',
            style: TextStyle(fontSize: 18.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}

Widget descriptions(context, model) {
  return Padding(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
          ),
        ),
        heightSizedBox(10.0),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: AllInputDesign(
            controller: model.createEventDescriptionController,
            keyBoardType: TextInputType.multiline,
            maxLine: 5,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            cursorColor: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => model.attachFile(),
          child: Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Icon(
              Icons.attach_file_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget eventDate(context, model) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 15.0),
    height: 65.0,
    width: double.infinity,
    color: Colors.grey[200],
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Event Date',
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
        widthSizedBox(10.0),
        GestureDetector(
          onTap: () => model.pickEventDate(context),
          child: Container(
            height: 45,
            width: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: themeColor,
            ),
            child: Center(
              child: Text(
                '${DateFormat('yyyy-MM-dd').format(model.selectEventDate)}',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget tagMember(context, model) {
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
          'Tag Member',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
  );
}

Widget nextBtn(context, model) {
  return Button(
    btnHeight: 55.0,
    btnWidth: double.infinity,
    color: themeColor,
    btnColor: themeColor,
    buttonName: 'Next >',
    onPressed: () => Navigator.pushNamed(
      context,
      '/createNewEventShow',
    ),
  );
}
