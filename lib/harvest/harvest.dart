import 'package:fisheries/dispatch/dispatchList.dart';
import 'package:flutter/cupertino.dart';
import 'package:fisheries/sample/takeSample.dart';
import 'package:fisheries/widgetUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sample/mySample.dart';

class Harvest extends StatefulWidget {
  const Harvest({Key? key}) : super(key: key);

  @override
  State<Harvest> createState() => _HarvestState();
}
var verticalDivider=SizedBox(
  height: 30,
  child: VerticalDivider(
    thickness: 1,
    width: 2,
    color: Colors.grey.shade300,
  ),
);

class _HarvestState extends State<Harvest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:   const Text("Harvest",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        color:  const Color(0xfff4f7fd),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 270,top: 8,bottom: 8),
                                child: Text("Waterbody",style: TextStyle(color:Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only( bottom: 18),
                                child: Container(
                                  width: 380,
                                  height: 180.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.25,color:  const Color(0x8B326789)),
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF4F7FD),
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("lib/assets/images/location.png",height: 27,width: 27,),
                                           const SizedBox(width: 10,),
                                            const Text("VVGX+VHX<Adaarsh nagar,Roorkee,247667",style: TextStyle(color:Colors.black, fontSize: 12, fontWeight: FontWeight.normal),),
                                          ],
                                        ),
                                        IntrinsicHeight(

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,

                                            children: [
                                             harvestDetails("waterbody", "Water sources", "Glacier",),
                                              const SizedBox(width: 50,),
                                              verticalDivider,
                                              const SizedBox(width: 50,),
                                              harvestDetails("weight", "Weight", "60.0kg",),
                                            ],
                                          ),
                                        ),

                                        IntrinsicHeight(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              harvestDetails("species", "Species", "Goldfish",),
                                              const SizedBox(width: 70,),
                                              verticalDivider,
                                              const SizedBox(width: 50,),
                                              harvestDetails("harvestingDate", "Date of harvesting", "19 Dec 2022",),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),

                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 10,left: 260),
                                child: Container(
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                                      color:  Color(0xFFE55B4E),
                                      shape: BoxShape.rectangle),
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,right: 10,top: 7,bottom: 7),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        InkWell(
                                          onTap: (){
                                            Get.to( const DispatchList());
                                          },
                                          child: const Text("Dispatch",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal),
                                              textAlign: TextAlign.center),
                                        ),
                                        const SizedBox(width: 5,),
                                        const Icon(Icons.arrow_forward,color: Colors.white,size: 15,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),        ])
                    );

                  }),
            ),


          ],
        )
    );
  }
}
