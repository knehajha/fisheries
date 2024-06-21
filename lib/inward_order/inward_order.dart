import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../rejection/rejection.dart';

class InwardOrder extends StatefulWidget {
  const InwardOrder({Key? key}) : super(key: key);

  @override
  State<InwardOrder> createState() => _InwardOrderState();
}

class _InwardOrderState extends State<InwardOrder> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(left: 80,),
          child: Text("Inward Order",style: GoogleFonts.varela(fontSize: 23,fontWeight: FontWeight.bold,color: const Color(0xff326789))),
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
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape:   const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(
                    width: 0.2,
                    color: Color(0xff8D8D8D),
                  )
              ),
              color: const Color(0xffF4F7FD),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children:[ Image.asset("lib/assets/images/circlePink.png",height: 40,width: 40,
                          ),
                            Positioned(
                              left: 10,top: 8,
                              child: Image.asset("lib/assets/images/grossWeight.png",height: 23,width: 23,
                              ),
                            ),
                          ] ),
                       const SizedBox(width: 8,),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text("Gross Weight",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                Text("150 Kg",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 50,),
                    Row(
                      children: [
                        Image.asset("lib/assets/images/weight.png",height: 40,width: 40,
                        ),

                        const SizedBox(width: 20,),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text("Net Weight",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                Text("150 Kg",style: GoogleFonts.poppins(color:const Color(0xff326789), fontSize: 14, fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ],

                        )
                      ],
                    )

                  ],
              ),
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
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape:   const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(
                  width: 0.2,
                  color: Color(0xff8D8D8D),
                )
            ),
            color: const Color(0xffF4F7FD),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(alignment: Alignment.topLeft,
                            child: Text("Amit Sharma", style: GoogleFonts.poppins(
                                color: const Color(0xffE55B4E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),),
                          ),
                        ),
                      const SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Net Weight",style: GoogleFonts.poppins(color:const Color(0xff161F47), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("Fish Count",style: GoogleFonts.poppins(color:const Color(0xff161F47), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("Gross Weight",style: GoogleFonts.poppins(color:const Color(0xff161F47), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("Barcode",style: GoogleFonts.poppins(color:const Color(0xff161F47), fontSize: 14, fontWeight: FontWeight.w500),),
                                ],
                              ),
                              const SizedBox(width: 25,),
                              Column(
                                children: [
                                  Text("-",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("-",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("-",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("-",style: GoogleFonts.poppins(color:const Color(0xff818181), fontSize: 14, fontWeight: FontWeight.w500),),
                                ],
                              ),
                              const SizedBox(width: 25,),
                              Column(
                                children: [
                                  Text("500 Kg",style: GoogleFonts.poppins(color:const Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("160 Fishes",style: GoogleFonts.poppins(color:const Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("600 kg",style: GoogleFonts.poppins(color:const Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.w500),),
                                  const SizedBox(height: 10,),
                                  Text("F00002324",style: GoogleFonts.poppins(color:const Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ],
                          ),

                       const SizedBox(height: 30,),


                        ],
                      ),
                      ],
                    ),
                    Row(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20,top: 5),
                          child: ElevatedButton(onPressed: (){
                            Get.to( const Rejection());
                          },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              primary: const Color(0xffE55B4E),
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child:
                            Text("Reject",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
                            ),
                          )

                      ),
                        const SizedBox(width: 50,),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 20,top: 5),
                            child: ElevatedButton(onPressed: (){

                            },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                primary:  Colors.green,
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              child:
                              Text("Accept",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
                              ),
                            )

                        ),
                      ]),
                  ],
                ),
              ),
            ),

          ),

        );
      }),
    )],
      ),
    );
  }
}
