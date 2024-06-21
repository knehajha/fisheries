
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





Widget waterBodyNameField( String icon,double iconSize,String title)
   => Align(
      alignment: Alignment.topLeft,
      child: Row(
      children: [
      CircleAvatar(
      backgroundColor: const Color(0xFFF4F7FD),
  radius: 15,
  child: Image.asset(icon,
  width: iconSize,
  fit:BoxFit.fill,
  color: Colors.black,
  )),
        Text(title,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color:Colors.black)),]));

Widget getFormField(String hint) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: const Color(0xffF4F7FD),
  ),
  child: TextFormField(
      cursorColor: Colors.blueGrey,
      enableSuggestions: false,
      autocorrect: false,
      decoration:  InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 11),
          hintText:hint,
          fillColor: const Color(0xFFF4F7FD))
   ),
 );

BoxDecoration dropdownDecorationFill() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: const Color(0xFFF4F7FD));
}


