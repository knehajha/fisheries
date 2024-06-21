import 'package:fisheries/sample/takeSample.dart';
import 'package:fisheries/widgetUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MySample extends StatefulWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  State<MySample> createState() => _MySampleState();
}

class _MySampleState extends State<MySample> {


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
    return  Scaffold(
      appBar: AppBar(
        title:   const Text("Samples",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Container(
                width: 120,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color:  Color(0xFFE55B4E),
                    shape: BoxShape.rectangle),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    InkWell(
                      onTap: (){
                        Get.to( const TakeSample());
                      },
                      child:  const Icon(Icons.add,color: Colors.white,size: 18,)),
                      const Text("Take Sample",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
     ] ),
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
                              child: Text("Sample: 1",style: TextStyle(color:Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( bottom: 18),
                              child: Container(
                                width: 380,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 0.25,color:  const Color(0x8B326789)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF4F7FD),
                                ),
                               child:  Column(
                                 children: [
                                   IntrinsicHeight(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         sampleDetails("purpleCircle", "sampleweight", "Weight", "1.5kg",),
                                         verticalDivider,
                                         sampleDetails("circlePink", "length", "Weight", "10.50cm",),
                                       ],
                                     ),
                                   ),

                                   IntrinsicHeight(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         sampleDetails("circleGreen", "color", "Colour", "30%",),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 10),
                                           child: verticalDivider,
                                         ),
                                         sampleDetails("circkeBlue", "uploadpic", "Uploaded pic", "Uploaded",),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                              ),
                            ),
                          ]));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 0.25,color:  const Color(0x8B326789)),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF4F7FD),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createdSampleDetails("circlePink","length", "Average length","10.5 cm"  ),

                    createdSampleDetails("purpleCircle", "sampleweight", "Average weight","1.5 kg" ),

                    createdSampleDetails("circleGreen", "color", "Colouration", "30%",),
                    const SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      Get.to( const MySample());
                    },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
                        primary: const Color(0xffE55B4E),
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child:
                      Text("Submit",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
                      ),
                    )
                ]),
              ),
            ),
          ),

        ],
      )



    );
  }
}
