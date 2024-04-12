import 'package:tree/Event/EventView/event_widgets.dart';
import 'package:flutter/material.dart';

class EventView extends StatefulWidget {
  static const routeName = '/eventView';

  @override
  _EventViewState createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            eventTopAppbar(context),
          ],
        ),
      ),
    );
  }
}
