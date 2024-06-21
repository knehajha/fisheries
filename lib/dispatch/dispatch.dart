import 'dart:convert';

import 'package:fisheries/inward_order/inward_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../profile/profile.dart';

class Dispatch extends StatefulWidget {
  const Dispatch({Key? key}) : super(key: key);

  @override
  State<Dispatch> createState() => _DispatchState();
}

class _DispatchState extends State<Dispatch> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(left: 80,),
          child: Text("Dispatch",style: GoogleFonts.varela(fontSize: 23,fontWeight: FontWeight.bold,color: const Color(0xff326789))),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
        icon: const Icon(CupertinoIcons.back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    body: Column(
      children: [
        const SizedBox(height: 10,),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right:50),
            child: Container(
              height: 50,width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF4F7FD),
              ),
              child: Row(children:
              [

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Select all",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
              ),
                Radio(
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value){
                      //selected value
                    }
                ),
              ]),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {

          return Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Radio(
                value: "radio value",
                groupValue: "group value",
                onChanged: (value){
                  //selected value
                }
          ),
              ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape:   const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide(
                    width: 0.2,
                    color: Color(0xff8D8D8D),
                  )
                ),
              color: const Color(0xffF4F7FD),
              child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 40,top: 20),
                child: Row(
                children: [
                Stack(
                children:[ Image.asset("lib/assets/images/location.png",height: 25,width: 25,
                ),
                ]),
                Text("Phase II Patnajali,Haridwar\n Uttrakhand,249407",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),

                ],

                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IntrinsicHeight(
                  child: Row(
                  children: [
                  Image.asset("lib/assets/images/waterbody.png",height: 25,width: 25,),
                  Column(
                  children: [
                  Text("Water Body",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                  Text("Glacier",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                  ],
                  ),
                    const VerticalDivider(
                      color: Color(0xff818181),
                      thickness: .2,
                    ),
                  const SizedBox(width: 50,),
                  Row(
                  children: [
                  Image.asset("lib/assets/images/weight.png",height: 25,width: 25,),
                  Column(
                  children: [
                  Text("Weight",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w600),),
                  Text("200kg",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                  ],
                  ),
                  ],
                  ),
                  const SizedBox(height: 20,),
                  ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 20),
                child: IntrinsicHeight(
                  child: Row(
                  children: [
                  Image.asset("lib/assets/images/species.png",height: 25,width: 25,),
                  Column(
                  children: [
                  Text("Species",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                  Text("Trout",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                  ],
                  ),
                    const VerticalDivider(
                      color: Color(0xff818181),
                      thickness: .2,
                    ),
                  const SizedBox(width: 30,),
                  Row(
                  children: [
                  Image.asset("lib/assets/images/harvestingDate.png",height: 25,width: 25,),
                  Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Date of Harvesting",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w600),),
                  ),
                  Text("5 Jan 2022",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                  ],
                  ),
                  ],
                  ),
                  const SizedBox(height: 20,),
                  ],
                  ),
                ),
              ),

              ],
              ),

              ),
            ),
          ],);


          }),
        ),
        Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(onPressed: (){
              Get.to( const InwardOrder());
            },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                primary: const Color(0xffE55B4E),
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child:
              Text("DISPATCH",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
              ),
            )

        )
      ],


    ));







   }

 }
