import 'package:carousel_slider/carousel_slider.dart';
import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List latestMoviesList=[AppImages.movie1Img,AppImages.movie2Img,AppImages.movie3Img];
  List popularMoviesList=[AppImages.movie3Img,AppImages.movie4Img,AppImages.movie5Img,AppImages.movie6Img,AppImages.movie7Img];
  List title =["All","Movies","TV Shows","My Faves"];
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.black,

        body: ListView(

          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              SearchScreen()
                          )
                      );
      },
                      child: Image.asset(AppImages.moreIcon)),
                  SizedBox(width: 120,),
                  Image.asset(AppImages.appLgoWithName,height: 60,),
                  Spacer(),
                  Image.asset(AppImages.profileImg)

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1,color: Colors.grey)
                  )
              ),
              child: ListView.builder(

                  itemCount: title.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){

                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20,right: 10),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2,color: selectedindex==index?Colors.white:ColorConstants.black)
                          )
                        ),
                        child: Center(child: Text(title[index],style: TextStyle(color: selectedindex== index?Colors.white:ColorConstants.grey,fontWeight: FontWeight.bold,fontSize: 15),)),
                      )
                    );
                  }),
            ),
            SizedBox(height: 20,),


            CarouselSlider(
              options: CarouselOptions(

                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,),

              items: [1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:AssetImage( latestMoviesList[i]),
                              fit: BoxFit.cover
                            )
                        ),

                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Popular",style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              margin: EdgeInsets.only(left: 20,right: 20),

              child: ListView.builder(
                  itemCount: popularMoviesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  Container(
                      width: MediaQuery.of(context).size.width*0.24,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  popularMoviesList[index]
                              ),
                              fit: BoxFit.cover
                          )
                      ),

                    );
                  }),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Trending",style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              margin: EdgeInsets.only(left: 20,right: 20),
              child: ListView.builder(
                  itemCount: popularMoviesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  Container(
                      width: MediaQuery.of(context).size.width*0.24,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  popularMoviesList[index]
                              ),
                              fit: BoxFit.cover
                          )
                      ),

                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

}
