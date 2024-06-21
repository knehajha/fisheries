import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fisheries/harvest/harvest.dart';
import 'package:fisheries/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../dispatch/dispatch.dart';
import '../waterBodies/waterBodies.dart';
import '../widgetUtils.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  State<Dashboard2> createState() => _Dashboard2State();
 }

 class _Dashboard2State extends State<Dashboard2> {


  PickedFile? _imageFile;
  File? _file;
  final ImagePicker picker = ImagePicker();

  Future takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile!;
      _file = File(pickedFile.path);
    });

  }

  double currentPage =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   body: SafeArea(
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Row(
             children:  [
               InkWell(
                   onTap: (){
                     Get.to( const Profile());
            },

            child:   getProfilePicView(_file,30)),
                const SizedBox(width: 20,),
          Column(
            children:  const [
              Text("Welcome",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff161F47))),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text("Test",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffE55B4E)),
                ),
              ),

            ],

          )],
           ),
           const SizedBox(height: 20,),
     ImageSlideshow(
       width: double.infinity,
       height: 200,
       initialPage: 0,
       indicatorRadius: 5.0,
       indicatorColor: Colors.blue,
       indicatorBackgroundColor: Colors.white,
       onPageChanged: (value) {},
       autoPlayInterval: 3000,
       isLoop: true,

       children: [
         Image.asset('lib/assets/images/slider1.png', fit: BoxFit.cover,),
         Image.asset('lib/assets/images/slider2.png', fit: BoxFit.cover,),
         Image.asset('lib/assets/images/slider3.png', fit: BoxFit.cover,),
       ],
     ),
           const SizedBox(height: 20,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               customGrid(const Color(0xffFFEEE6), "waterbody_name.png", "Water Bodies", "0"),
               customGrid(const Color(0xffEAE8FD), "yields.png", "Yield", "0.00 KG"),
               customGrid(const Color(0xffFFEEE6), "rejected.png","Orders" , "0"),
             ],
           ),
           const SizedBox(height: 25,),
           InkWell(
               onTap: (){
                 Get.to(  const WaterBodies());
               },
               child: customContainer("My Water Bodies","circkeBlue.png","my_water_bodies.png")),
           const SizedBox(height: 12,),
           customContainer("Update Growth Data","purpleCircle.png","dataanalytics.png"),
           const SizedBox(height: 12,),
           InkWell(
               onTap: (){
                 Get.to(  const Harvest());
               },
           child:customContainer("Harvest Fishes","circlePink.png","harvest.png")),
           const SizedBox(height: 12,),
           customContainer("Sell/Dispatch","circleGreen.png","dispatch.png"),
           const SizedBox(height: 12,),

       ]),
     ),
   ),
    );

  }
}
