import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  Function ontap;
  String bttnText;
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction textInputAction;
  Widget suffixIcon;
  Widget prefixIcon;
  String helperTxt;
  bool readonly;


  CustomTextField({this.bttnText,this.ontap,this.controller,this.inputType,this.textInputAction,this.suffixIcon,this.helperTxt,this.readonly = false,this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HexColor("#282828").withOpacity(1)

        
      ),
      child: TextField(
        onTap:ontap,
        controller: controller,
        keyboardType: inputType,
        textInputAction: textInputAction,
        readOnly: readonly,
        decoration: InputDecoration(

          border: InputBorder.none,
          enabledBorder:InputBorder.none,
          focusedBorder:InputBorder.none,

          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: helperTxt,
          hintStyle: TextStyle(color: HexColor("#979896").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 15),
          contentPadding: EdgeInsets.only(left: 10)
        ),
      ),
    );
  }
}



