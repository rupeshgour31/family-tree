import 'package:tree/Common/common_widgets.dart';
import 'package:tree/SignIn/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sign_in_widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<SignInModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              title: Text(
                'SIGN IN',
                style: TextStyle(
                  color: Color(0xff89A309),
                  fontSize: 18.0,
                ),
              ),
            ),
            extendBodyBehindAppBar: true,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                left: 25.0,
                right: 25.0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Group 11.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      welcomeText(),
                      heightSizedBox(10.0),
                      signInText(),
                      usernameTextField(model),
                      passwordTextField(model),
                      heightSizedBox(10.0),
                      forgotPassword(context),
                      heightSizedBox(25.0),
                      signInBtn(context, _formKey, model),
                      heightSizedBox(20.0),
                      signUpBtn(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
