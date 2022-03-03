import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:cocrico_user_app/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(AppImages.backArrowImg)),
              SizedBox(height: 20,),

              Center(child: Image.asset(AppImages.appLgoWithName)),
              SizedBox(height:60,),
              Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),)),
              SizedBox(height: 50,),
              CustomTextField(
                prefixIcon: Icon(Icons.phone_android,color:HexColor("#979896"),),
                helperTxt: "Mobile Number",),
              SizedBox(height: 20,),
              CustomButton(
                bttnText: "Continue",
                ontap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          PrefrencesScreen()
                      )
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
