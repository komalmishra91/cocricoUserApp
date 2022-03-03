import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/screens/coming_soon.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
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
              Image.asset(AppImages.backArrowImg),
              SizedBox(height:60,),
              Center(child: Text("Choose Your Plan",style: TextStyle(color: Colors.white,fontSize: 22),)),
              SizedBox(height: 50,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                  itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.all(20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImages.chckImg),
                      SizedBox(width: 20,),
                      Expanded(child: Text("You won't be changed until after your free month",style: TextStyle(color: Colors.white,fontSize: 12),))
                    ],
                  ),
                );
              }),
              SizedBox(height: 60,),
              CustomButton(
                bttnText: "See The Plans",
                ontap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          ComingSoon()
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
