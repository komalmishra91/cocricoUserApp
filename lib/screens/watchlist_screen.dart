import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:cocrico_user_app/helper_widgets/custom_textfield.dart';
import 'package:cocrico_user_app/screens/prefrences_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  @override
  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  List  data = [AppImages.horrorImg,AppImages.thrillerImg,AppImages.adventure,AppImages.actionImg,AppImages.comedyImg,AppImages.romanticImg,AppImages.trendingImg,AppImages.movie3Img,AppImages.movie6Img];
  int selectedindex;
  @override


  void initState() {
    super.initState();
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
            title: Text("WatchList",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            centerTitle: true,
          )
      ),
      body: SafeArea(
        child:  Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            physics: NeverScrollableScrollPhysics(),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 2.2/2.9
            ),
            itemBuilder: (BuildContext context, int index){
              return InkWell(
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
                              image: AssetImage(data[index]),
                              fit: BoxFit.cover
                          )
                      ),

                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
