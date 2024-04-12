import 'package:tree/Common/common_widgets.dart';
import 'package:tree/SignUp/sign_up_model.dart';
import 'package:tree/SignUp/sign_up_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpModel>(
      builder: (context, model, _) {
        return MediaQuery(
          data: mediaText(context),
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                MediaQuery.of(context).size.height * 0.2,
              ), // here the desired height
              child: Container(
                padding: EdgeInsets.only(top: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Group 11.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff1C719C).withOpacity(0.7),
                      Color(0xff7ADC55).withOpacity(0.6),
                    ],
                    stops: [0.2, 0.8],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    'SIGN UP',
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(55),
                    ),
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                      bottom: 25.0,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          firstNameTextField(model),
                          secondNameTextField(model),
                          thirdNameTextField(model),
                          fourthNameTextField(model),
                          fifthNameTextField(model),
                          userNameTextField(model),
                          emailTextField(model),
                          passTextField(model),
                          heightSizedBox(25.0),
                          acceptTAndC(model),
                          heightSizedBox(25.0),
                          signInButton(context, _formKey, model),
                          heightSizedBox(30.0),
                          alreadyAccountToSignIn(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
