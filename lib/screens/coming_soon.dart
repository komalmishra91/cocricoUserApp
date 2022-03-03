import 'dart:async';

import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/login_screen.dart';
import 'package:flutter/material.dart';


class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {

  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(

            preferredSize: Size.fromHeight(80.0),
            child: AppBar(

              backgroundColor: ColorConstants.black,
              leading: Image.asset(AppImages.backArrowImg),

            )
        ),
        backgroundColor: ColorConstants.black,
        body: SafeArea(
          child: Center(child: Text("Coming Soon!",style: TextStyle(color: Colors.white,fontSize: 25),)),
        ));
  }
}
