import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_button.dart';
import 'package:cocrico_user_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BuyNowScreen extends StatefulWidget {
  @override
  _BuyNowScreenState createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
  List latestMoviesList=[AppImages.movie1Img,AppImages.movie2Img,AppImages.movie3Img];
  List popularMoviesList=[AppImages.movie3Img,AppImages.movie4Img,AppImages.movie5Img,AppImages.movie6Img,AppImages.movie7Img];
  List title =["Watching","My List","Download"];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(AppImages.hazeImg),
                      fit: BoxFit.cover
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()));
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),

                      ],
                    ),
                    SizedBox(height: 200,),

                    Center(child: Text("LIMITED TIME OFFER",style: TextStyle(color: ColorConstants.grey,fontSize: 15,fontWeight: FontWeight.normal),)),
                    SizedBox(height: 10,),
                    Center(child: Text("All of Cocrico. For Less",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    SizedBox(height: 10,),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                        itemBuilder: (context,index){
                      return Stack(
                        children: [
                          InkWell(
                          onTap: (){
                        setState(() {
                          selectedindex = index;
                        });
                      },
                          child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(top: 10,bottom: 10),
                          decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border:Border.all(color: selectedindex== index?Colors.yellow:Colors.white,width: 2)
                          ),
                          child: Row(
                          children: [
                            selectedindex== index? Image.asset(AppImages.red_circle):Image.asset(AppImages.blank_circle),
                          SizedBox(width: 10,),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("12 months",style: TextStyle(color: ColorConstants.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("50% off",style: TextStyle(color: HexColor("#E90810"),fontSize: 15,fontWeight: FontWeight.normal),),
                          ],
                          ),
                          Spacer(),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("\$699.99",style: TextStyle(color: ColorConstants.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("\$149.00",style: TextStyle(color: ColorConstants.grey,fontSize: 12,fontWeight: FontWeight.normal),),
                          ],
                          ),
                          ],
                          ),
                          ),
                          ),
                          selectedindex== index?Container(
                            padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                            margin: EdgeInsets.only(left: 10,),

                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("Current Plan",style: TextStyle(color: ColorConstants.black,fontSize: 12,fontWeight: FontWeight.normal),),
                          ):SizedBox()
                        ],
                      );
                    }),
                    SizedBox(height: 10,),
                    CustomButton(bttnText: "Buy Now",)
                    
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

