import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/app_settings.dart';
import 'package:cocrico_user_app/screens/profile_screen.dart';
import 'package:cocrico_user_app/screens/detail_screen.dart';
import 'package:cocrico_user_app/screens/plan_screen.dart';
import 'package:cocrico_user_app/screens/playing_screen.dart';
import 'package:cocrico_user_app/screens/settings.dart';
import 'package:cocrico_user_app/screens/subscription_screen.dart';
import 'package:cocrico_user_app/screens/watchlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List title = ["Movies", "TV", "Originals", "Kids"];
  int selectedindex;
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
            title: Text(
              "Search",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                helperTxt: "search by actor,title...",
                prefixIcon: Image.asset(AppImages.searchImg),
                suffixIcon: Image.asset(AppImages.micImg),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Browse by",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: title.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 7 / 2.9),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedindex == index?ColorConstants.primaryColor:Colors.white
                          ),
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Center(
                              child: Text(
                            title[index],
                            style: TextStyle(
                                color: ColorConstants.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ))),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
