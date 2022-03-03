import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class CustomButton extends StatelessWidget {
  Function ontap;
  String bttnText;
  bool iscolor;

  CustomButton({this.bttnText,this.ontap,this.iscolor = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child:  Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 15,bottom: 15,),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:iscolor?HexColor("#929292"):ColorConstants.primaryColor
        ),
        child: Center(
          child: Text(bttnText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: ColorConstants.black),),
        ),
      ),
    );
  }
}