import 'package:tree/ConsultantsView/consultant_view.dart';
import 'package:tree/ConsultantsView/consultant_view_model.dart';
import 'package:tree/DashBoard/dashboard.dart';
import 'package:tree/Event/CreateEvent/create_event.dart';
import 'package:tree/Event/CreateEvent/create_event_model.dart';
import 'package:tree/Event/CreateEvent/create_new_event_show.dart';
import 'package:tree/Event/EventView/event_view.dart';
import 'package:tree/Explore/explore_model.dart';
import 'package:tree/ForgotPassword/forgot_password.dart';
import 'package:tree/RequestService/request_service.dart';
import 'package:tree/RequestService/request_services_model.dart';
import 'package:tree/SignIn/sign_in.dart';
import 'package:tree/SignIn/sign_in_model.dart';
import 'package:tree/SignUp/sign_up.dart';
import 'package:tree/SignUp/sign_up_model.dart';
import 'package:tree/SplashScreen/splash_screen.dart';
import 'package:tree/Story/story.dart';
import 'package:tree/Story/story_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tree/WelcomePage/welcome_page.dart';

import 'Event/EventAndNewsList/event_and_news_list_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignInModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ExploreModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => StoryModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => EventModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ConsultantViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CreateEventModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => RequestServicesModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FamilyTree',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/welcomePage': (context) => WelcomePage(),
        '/signIn': (context) => SignIn(),
        '/resetPassword': (context) => ForgotPassword(),
        '/signUp': (context) => SignUp(),
        '/story': (context) => Story(),
        '/dashboard': (context) => Dashboard(),
        '/requestService': (context) => RequestService(),
        '/createNewEvent': (context) => CreateEvent(),
        '/createNewEventShow': (context) => CreateNewEventShow(),
        ConsultantView.routeName: (context) => ConsultantView(),
        EventView.routeName: (context) => EventView(),
        // '/homePage': (context) => HomePage(),
      },
    );
  }
}
