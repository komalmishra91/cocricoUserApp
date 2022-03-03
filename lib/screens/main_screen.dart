import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/screens/buy_now_screen.dart';
import 'package:cocrico_user_app/screens/detail_screen.dart';
import 'package:cocrico_user_app/screens/profile_screen.dart';
import 'package:cocrico_user_app/screens/homeScreen.dart';
import 'package:cocrico_user_app/screens/watchlist_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List screens = [HomeScreen(), DetailScreen(), BuyNowScreen(), ProfileScreen()];
  List image = [AppImages.homeImg, AppImages.movieReelImg, AppImages.bookMark, AppImages.userImg];


  @override


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset(AppImages.homeImg,color: _selectedIndex==0?Colors.yellow:ColorConstants.grey,),
                title: Text(''),
              backgroundColor: ColorConstants.black

            ),
            BottomNavigationBarItem(
                icon: Image.asset(AppImages.movieReelImg,color: _selectedIndex==1?Colors.yellow:ColorConstants.grey),
                title: Text(''),
                backgroundColor: ColorConstants.black
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.bookMark,color: _selectedIndex==2?Colors.yellow:ColorConstants.grey),
              title: Text(''),
                backgroundColor: ColorConstants.black

            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.userImg,color: _selectedIndex==3?Colors.yellow:ColorConstants.grey),
              title: Text(''),
                backgroundColor: ColorConstants.black

            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: ColorConstants.grey,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5,
        backgroundColor: ColorConstants.black,
      ),
      body: Center(
        child: screens[_selectedIndex],
      ),
    );

  }



}

