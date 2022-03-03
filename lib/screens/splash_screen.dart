import 'dart:async';

import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/login_screen.dart';
import 'package:cocrico_user_app/screens/signup.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.push(context,
            MaterialPageRoute(builder:
                (context) =>
                SignUp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.appLogo,height: 80,width: MediaQuery.of(context).size.width,color: ColorConstants.black,),

            ],
          ),
        ));
  }
}
