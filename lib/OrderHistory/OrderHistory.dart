import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(left: 80,),
          child: Text("Order History",style: GoogleFonts.varela(fontSize: 23,fontWeight: FontWeight.bold,color: const Color(0xff326789))),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {

            return Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
              child: Card(
                color: const Color(0xffF4F7FD),
                shape:   const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(
                      width: 0.2,
                      color: Color(0xff8D8D8D),
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20,),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Stack(
                                    children:[ Image.asset("lib/assets/images/circlePink.png",height: 30,width: 30,
                                      color: const Color(0xffEAE8FD),),
                                      Positioned(
                                        left: 4,top: 5,
                                        child: Image.asset("lib/assets/images/person.png",height: 23,width: 23,
                                        ),
                                      ),
                                    ] ),
                                const SizedBox(width: 10,),
                                Column(
                                  children: [
                                    const SizedBox(height: 10,),
                                    Text("Dispatch from",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text("Amit Sharma",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                const SizedBox(width: 50,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:60),
                            child: Row(
                              children: [
                                Image.asset("lib/assets/images/weight.png",height: 30,width: 30,),
                                const SizedBox(width: 10,),
                                Column(
                                  children: [
                                    const SizedBox(height: 10,),
                                    Text("Net Weight",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text("500 Kg",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Stack(
                                  children:[ Image.asset("lib/assets/images/circlePink.png",height: 30,width: 30,),
                                    Positioned(
                                      left: 4,top: 5,
                                      child: Image.asset("lib/assets/images/barcode.png",height: 23,width: 23,
                                      ),
                                    ),
                                  ] ),
                              const SizedBox(width: 10,),
                              Column(
                                children: [
                                  const SizedBox(height: 10,),
                                  Text("Barcode",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  Text("1100KB5678",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                ],
                              ),
                              const SizedBox(width: 50,),

                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                  children:[ Image.asset("lib/assets/images/circlePink.png",height: 30,width: 30,
                                    ),
                                    Positioned(
                                      left: 6,top: 5,
                                      child: Image.asset("lib/assets/images/pinkPerson.png",height: 16,width: 16,
                                      ),
                                    ),
                                  ] ),
                              const SizedBox(width: 10,),
                              Column(
                                children: [
                                  const SizedBox(height: 10,),
                                  Text("Dispatch to",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  Text("Ultra Fish",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                ],
                              ),
                              const SizedBox(width: 50,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Row(
                              children: [
                                Stack(
                                    children:[ Image.asset("lib/assets/images/circkeBlue.png",height: 30,width: 30,),
                                      Positioned(
                                        left: 7,top: 5,
                                        child: Image.asset("lib/assets/images/grossWeightBlue.png",height: 16,width: 16,
                                        ),
                                      ),
                                    ] ),
                                const SizedBox(width: 10,),
                                Column(
                                  children: [
                                    const SizedBox(height: 10,),
                                    Text("Gross Weight",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                    Text("400 Kg",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                  ],
                                ),

                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Stack(
                                  children:[ Image.asset("lib/assets/images/purpleCircle.png",height: 30,width: 30,),
                                    Positioned(
                                      left: 6,top: 5,
                                      child: Image.asset("lib/assets/images/calender.png",height: 18,width: 18,
                                      ),
                                    ),
                                  ] ),
                              const SizedBox(width: 10,),
                              Column(
                                children: [
                                  const SizedBox(height: 10,),
                                  Text("Date & Time",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  Text("1/01/2022\n9.30 p.m.",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),)
                                ],
                              ),
                              const SizedBox(width: 50,),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );


          }),


    );
  }
}
