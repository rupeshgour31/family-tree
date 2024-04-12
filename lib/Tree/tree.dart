import 'package:tree/Drawer/drawer.dart';
import 'package:flutter/material.dart';

class Tree extends StatefulWidget {
  @override
  _TreeState createState() => _TreeState();
}

class _TreeState extends State<Tree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Image(
          image: AssetImage('assets/images/Rectangle 36.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) => IconButton(
                  icon: Image.asset(
                    "assets/images/Group 28.png",
                    height: 18,
                    width: 21,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
                // ),
              ),
              Text(
                'My Family Tree',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontFamily: 'Montserrat',
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.notification_important_rounded,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            ],
          ),
        ),
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      drawer: DrawerView(),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
