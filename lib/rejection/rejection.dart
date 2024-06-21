import 'package:fisheries/OrderHistory/OrderHistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Rejection extends StatefulWidget {
  const Rejection({Key? key}) : super(key: key);

  @override
  State<Rejection> createState() => _RejectionSate();
}

class _RejectionSate extends State<Rejection> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(left: 80,),
          child: Text("Rejection",style: GoogleFonts.varela(fontSize: 23,fontWeight: FontWeight.bold,color: const Color(0xff326789))),
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
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Text("Select Rejection Reason",style: GoogleFonts.poppins(color:const Color(0xff161F47), fontSize: 18, fontWeight: FontWeight.w500),),
          ),
        const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                color:  const Color(0xffF4F7FD),
              ),

              child:   const TextField(

                decoration: InputDecoration(

                  hintText: 'Type Message',
                  fillColor: Color(0xffF4F7FD),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 60, horizontal: 20),

              ),
            )),
          ),
        const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Get.to( const OrderHistory());
          },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              primary: const Color(0xffE55B4E),
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            child:
            Text("SEND",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
            ),
          )

        ],

      ),
    );
  }
}
