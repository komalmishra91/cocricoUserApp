import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/main_screen.dart';
import 'package:cocrico_user_app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List latestMoviesList = [
    AppImages.movie1Img,
    AppImages.movie2Img,
    AppImages.movie3Img
  ];
  List popularMoviesList = [
    AppImages.movie3Img,
    AppImages.movie4Img,
    AppImages.movie5Img,
    AppImages.movie6Img,
    AppImages.movie7Img
  ];
  List title = ["Watching", "My List", "Download"];
  int selectedindex = 0;
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
                  image: AssetImage(AppImages.hazeImg), fit: BoxFit.cover),
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
                    Spacer(),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen()));
                        },
                        child: Image.asset(
                          AppImages.settingImg,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 120,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    AppImages.img5,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Semon Carry",
                      style: TextStyle(
                          color: ColorConstants.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(AppImages.editImg)
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                      itemCount: title.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedindex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: selectedindex == index
                                    ? HexColor("#FFFB2E").withOpacity(0.8)
                                    : Colors.white),
                            child: Center(
                                child: Text(
                              title[index],
                              style: TextStyle(
                                  color: selectedindex == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15),
                            )),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
                selectedindex == 0
                    ? _list()
                    : selectedindex == 1
                        ? _list()
                        : Image.asset(AppImages.dwnldIcon)
              ],
            ),
          ),
        ],
      )),
    );
  }

  _list() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Exclusive",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          child: ListView.builder(
              itemCount: popularMoviesList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(popularMoviesList[index]),
                              fit: BoxFit.cover)),
                      child: Image.asset(AppImages.img4),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Fresh",
                      style:
                          TextStyle(color: ColorConstants.grey, fontSize: 12),
                    )
                  ],
                );
              }),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Movie",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              itemCount: popularMoviesList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(popularMoviesList[index]),
                          fit: BoxFit.cover)),
                  child: Image.asset(AppImages.img4),
                );
              }),
        ),
      ],
    );
  }
}
