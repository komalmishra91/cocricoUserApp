import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/homeScreen.dart';
import 'package:cocrico_user_app/screens/main_screen.dart';
import 'package:cocrico_user_app/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PrefrencesScreen extends StatefulWidget {
  @override
  _PrefrencesScreenState createState() => _PrefrencesScreenState();
}

class _PrefrencesScreenState extends State<PrefrencesScreen> {
  List <Data> data = [];
  int selectedindex;
  @override


  void initState() {
  initList();
    super.initState();
  }

  initList(){
    data.add(Data(image:AppImages.horrorImg,title: "HORROR" ));
    data.add(Data(image:AppImages.thrillerImg,title: "THRILLER" ));
    data.add(Data(image:AppImages.adventure,title: "ADVENTURE" ));
    data.add(Data(image:AppImages.actionImg,title: "ACTION" ));
    data.add(Data(image:AppImages.comedyImg,title: "COMEDY" ));
    data.add(Data(image:AppImages.romanticImg,title: "ROMANTIC" ));
    data.add(Data(image:AppImages.trendingImg,title: "TRENDING" ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: SingleChildScrollView(
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
                Text("Choose",style: TextStyle(color: Colors.white,fontSize: 20),),
                Text("Prefrence Categories",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 20,),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  physics: NeverScrollableScrollPhysics(),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                      childAspectRatio: 3/2.9
                  ),
                  itemBuilder: (BuildContext context, int index){
                    return Stack(
                      children: [
                        InkWell(
                          onTap:(){
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Container(



                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: selectedindex == index?ColorConstants.primaryColor:ColorConstants.black,width: 1),
                                    image: DecorationImage(
                                        image: AssetImage(data[index].image),
                                        fit: BoxFit.cover
                                    )
                                ),
                                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(data[index].title,style: TextStyle(color:ColorConstants.primaryColor,fontSize: 18,fontWeight: FontWeight.bold),))
                            ),
                          ),
                        ),
                         selectedindex == index?Align(
                            child: Image.asset(AppImages.tickImg),
                        alignment: Alignment.topRight,):SizedBox()
                      ],
                    );
                  },
                ),

                SizedBox(height: 20,),
                CustomButton(
                  bttnText: "Continue",
                  ontap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                            (context) =>
                            MainScreen()
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
class Data {
  String image;
  String title;
  Data({this.image,this.title});
}
