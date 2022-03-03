import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:cocrico_user_app/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
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
                Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 50,),
                CustomTextField(
                  helperTxt: "Name",),
                SizedBox(height: 20,),
                CustomTextField(
                  prefixIcon:Padding(
                    padding:  EdgeInsets.only(top: 7),
                    child: Text("+91",style: TextStyle(color: HexColor("#979896").withOpacity(0.5),fontSize: 15),),
                  ),
                  helperTxt: "Mobile Number",),
                SizedBox(height: 20,),
                CustomTextField(
                  helperTxt: "Email",),
                SizedBox(height: 20,),
                CustomTextField(
                  helperTxt: "Country",),
                SizedBox(height: 20,),
                CustomButton(
                  bttnText: "Sign Up",
                  ontap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            VerifyOtp()
                        )
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
