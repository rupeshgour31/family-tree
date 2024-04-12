import 'package:tree/Common/common_widgets.dart';
import 'package:tree/ConsultantsView/consultant_view_widgets.dart';
import 'package:flutter/material.dart';

class ConsultantView extends StatefulWidget {
  static const routeName = '/consultantViewDetails';
  @override
  _ConsultantViewState createState() => _ConsultantViewState();
}

class _ConsultantViewState extends State<ConsultantView> {
  var consultViewDetail = {
    'id': '11',
    'title': 'Mac It Solution',
    'name': 'John Dua',
    'description': '''
  If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.

  Believe it or not its just me. Were art gonna do it. Give us any chance and well take it. Give us any chance and a well take it. Give us any rule we'll  not break it. We're gonna make our best dreams come true? Flying away oh on a wing and a real prayer, oh yes and a prayer.

  If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on board and move the sail towards the destination.
  ''',
    'development': 'Established on 9 Nov 2020',
    'services': [
      'New Construction',
      'Rented house',
      'Easy loan fality',
      'Raw house',
      'Property dealing',
      'Raw materials',
      'Land',
    ],
  };
  @override
  Widget build(BuildContext context) {
    // final Map consult = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topBarDetails(context, consultViewDetail),
                heightSizedBox(8.0),
                membershipAndProfile(context),
                heightSizedBox(8.0),
                dividerCommon(
                  height: 1.0,
                  indent: 1.0,
                  endIndent: 1.0,
                  thickness: 1.0,
                ),
                heightSizedBox(8.0),
                requestToservice(context),
                overviewShareCommentFav(),
                heightSizedBox(10.0),
                descriptionView(),
                heightSizedBox(10.0),
                dividerCommon(
                  height: 1.0,
                  indent: 1.0,
                  endIndent: 1.0,
                  thickness: 1.0,
                ),
                heightSizedBox(10.0),
                services(),
                heightSizedBox(10.0),
                officeGallery(),
                heightSizedBox(25.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
