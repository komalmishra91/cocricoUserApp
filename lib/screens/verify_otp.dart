import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/login_screen.dart';
import 'package:cocrico_user_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
              Center(child: Text("Enter OTP",style: TextStyle(color: Colors.white,fontSize: 18),)),
              SizedBox(height: 50,),
              Container(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap:  true,
                    itemBuilder: (context,index){
                      return Container(

                        margin: EdgeInsets.only(left: 10,right: 10),
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            color: HexColor("#282828").withOpacity(1)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 25,right: 10,top: 10),
                            hintText: "0",
                            hintStyle: TextStyle(color: HexColor("#979896").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 15),

                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),
              CustomButton(
                bttnText: "Login",
                ontap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          LoginScreen()
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
