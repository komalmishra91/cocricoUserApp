import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

  @override


  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: PreferredSize(

          preferredSize: Size.fromHeight(80.0),
          child: AppBar(

            backgroundColor: ColorConstants.black,
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },

                child: Image.asset(AppImages.backArrowImg)),
            title: Text("Subscription",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            centerTitle: true,
          )
      ),
      body: SafeArea(
        child:  Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("PLAN DETAILS",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1,color: Colors.white)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Premium Ultra HD",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("12 Months",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.normal),),
                    SizedBox(height: 20,),
                    CustomButton(
                      bttnText: "Change Plan",
                      ontap: (){

                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 40,),
              CustomButton(
                bttnText: "Cancel",
                iscolor: true,
                ontap: (){

                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
