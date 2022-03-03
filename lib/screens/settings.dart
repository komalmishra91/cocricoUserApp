import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/app_settings.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:cocrico_user_app/screens/subscription_screen.dart';
import 'package:cocrico_user_app/screens/watchlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
 List <Data> data =[];
  @override


  void initState() {
   initList();
    super.initState();
  }

 initList(){
   data.add(Data(image:AppImages.greyTickImg,title: "My List" ));
   data.add(Data(image:AppImages.settingImg,title: "App Settings" ));
   data.add(Data(image:AppImages.videoImg,title: "Subscriptions" ));
   data.add(Data(image:AppImages.qImg,title: "Help" ));

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
            title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            centerTitle: true,
          )
      ),
      body: SafeArea(
        child:  ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
            itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                if(index == 0){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          WatchList()
                      )
                  );
                }
                if(index == 1){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          AppSettings()
                      )
                  );
                }
                if(index == 2){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          SubscriptionScreen()
                      )
                  );
                }

              },
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 15),
                 margin: EdgeInsets.only(top: 3,left: 15,right: 15),
                 decoration: BoxDecoration(
                   color: HexColor("#282828").withOpacity(1),
                   borderRadius: BorderRadius.circular(3)
                 ),
                child: Row(
                  children: [
                    Image.asset(data[index].image),
                    SizedBox(width: 10,),
                    Text(
                      data[index].title,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Spacer(),
                    Image.asset(AppImages.forward_arrow)
                  ],
                ),
              ),
            );


        }),
      ),
    );
  }
}
