
import 'package:fisheries/sample/mySample.dart';
import 'package:fisheries/waterBodies/createWaterBodies.dart';
import 'package:fisheries/widgetUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class WaterBodies extends StatefulWidget {
  const WaterBodies({Key? key}) : super(key: key);

  @override
  State<WaterBodies> createState() => _WaterBodiesState();
}

class _WaterBodiesState extends State<WaterBodies> {

  var verticalDivider=SizedBox(
    height: 50,
    child: VerticalDivider(
      thickness: 1,
      width: 2,
      color: Colors.grey.shade300,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:  const Text("My Water Bodies",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
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
              elevation: 0.2,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
                child:Column(
              children: [
              const Padding(
                padding: EdgeInsets.only(right: 270,top: 8,bottom: 8),
                child: Text("Waterbody",style: TextStyle(color:Color(0xffE55B4E), fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
              width: 360,
              height: 90.0,
              decoration: BoxDecoration(
              border: Border.all(width: 0.25,color:  const Color(0x8B326789)),
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF4F7FD),
              ),
              child: IntrinsicHeight(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              wbDetails("purpleCircle", "fish", "Species", "Golden Fish"),
              verticalDivider,
              wbDetails("circkeBlue", "harvest2", "Days to harvest", "Algae eater"),
              verticalDivider,
              wbDetails("circleGreen", "calender2", "Date", "10-07-2023"),
              verticalDivider,
              wbDetails("circlePink", "waterbody2", "Water sources", "Stream fed",),
              ],
              ),
              ),
              ),
              Row(
              children:  [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Samples",style: TextStyle(color:Colors.green, fontSize: 14, fontWeight: FontWeight.normal)),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                child: Container(
                width: 150,
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
                    Get.to( const MySample());
                  },
                  child: const Text("Start sampling",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.arrow_forward,color: Colors.white,size: 15,)
                ],
                ),
                ),
                ),
              ),

              ],

              ),



              ]));
    }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250,bottom: 10),
              child: FloatingActionButton(onPressed: (){
                Get.to(const CreateWaterBodies ());
              },
                backgroundColor: const Color(0xFFE55B4E),
              child: const Icon(Icons.add,),
              ),
            )

          ],
        ),
      
    );
    }
    }

