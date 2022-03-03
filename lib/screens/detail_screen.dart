import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/playing_screen.dart';
import 'package:cocrico_user_app/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rating_bar/rating_bar.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var _rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstants.black,
          body: Stack(
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
                        Image.asset(AppImages.moreIcon),
                        SizedBox(
                          width: 120,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchScreen()));
                            },
                            child: Image.asset(
                              AppImages.appLgoWithName,
                              height: 60,
                            )),
                        Spacer(),
                        Image.asset(AppImages.uploadImg)
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset(AppImages.text),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2021",
                          style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 15,
                          width: 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorConstants.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "18+",
                          style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 15,
                          width: 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorConstants.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "TV Drama",
                          style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar(
                      onRatingChanged: (rating) => setState(() => _rating = rating),
                      filledIcon: Icons.star,
                      initialRating: 1,
                      emptyIcon: Icons.star_border,
                      halfFilledIcon: Icons.star_half,
                      isHalfAllowed: true,
                      filledColor: Colors.yellow.shade700,
                      emptyColor: Colors.grey,
                      size: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(AppImages.addImg),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "My List",
                              style: TextStyle(
                                  color: ColorConstants.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayingScreen()));
                          },
                            child: Image.asset(AppImages.videoPausedImg)),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Image.asset(AppImages.likeImg),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Rate",
                              style: TextStyle(
                                  color: ColorConstants.grey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "A story of people who fail at life for various reasons, but suddenly receive a mysterious invitation to participate in a survival game to win more than 38 million US dollars. The game takes place at an isolated island and the participants are locked up until there is a final winner.",
                      style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                          return Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AppImages.img1)
                                      ),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  height: 100,width: 100,
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Episode 1:",
                                        style: TextStyle(
                                            color: ColorConstants.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 1,),
                                      Text(
                                        "Red Light Green Light",
                                        style: TextStyle(
                                            color: ColorConstants.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "A story of people who fail at life for various reasons, but suddenly... receive a mysterious invitation to participate in a survival game to win more than 38 million US dollars. The game takes place at an isolated island and the participants are locked up until there is a final winner.",
                                        style: TextStyle(
                                            color: ColorConstants.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal),

                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Image.asset(AppImages.dwnldImg)
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
