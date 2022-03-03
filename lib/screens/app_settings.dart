import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool isSwitched = false;
  @override


  void initState() {
    super.initState();
  }
  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
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
            title: Text("App Settings",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
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
              Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: HexColor("#282828")
                ),
                child: Row(
                  children: [
                   Image.asset(AppImages.notificationImg),
                    SizedBox(width: 10,),
                    Text("App Settings",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
                    Spacer(),
                    Transform.scale(
                        scale: 0.8,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: isSwitched,
                          activeColor: Colors.white,
                          activeTrackColor: Colors.yellow,
                          inactiveThumbColor: Colors.redAccent,
                          inactiveTrackColor: Colors.orange,
                        )
                    ),

                  ])
              ) ,
              Spacer(),
              Center(child: Text("Sign out",style: TextStyle(color: ColorConstants.grey,fontSize: 12,fontWeight: FontWeight.normal),)),
            ],
                ),
              ),

          ),
        );
  }
}
