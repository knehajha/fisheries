import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dashboard/dashboard.dart';
import '../dashboard/dashboard.dart';
import '../sample/mySample.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
         elevation: 0,
         leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
          actions: <Widget>[
      IconButton(icon: const Icon(Icons.edit,color: Color(0xff326789),), onPressed: () {
        Get.to( const Dashboard());
      }),

      ]),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
          const Text("Profile",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black)),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset("lib/assets/images/profileIcon.png",height: 100,width: 100,),
            ),
          const SizedBox(height: 20,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 280,width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffF4F7FD),
                  ),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("lib/assets/images/person.png",height: 30,width: 30,),
                          const SizedBox(width: 10,),
                          const Text("Name -",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xff326789))),
                          const Text("Amit Sharma ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Divider(),
                      Row(
                        children: [
                          Image.asset("lib/assets/images/phone.png",height: 30,width: 30,),
                          const SizedBox(width: 10,),
                          const Text("Phone Number -",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xff326789))),
                          const Text("7047989938",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Divider(),
                      Row(
                        children: [
                          Image.asset("lib/assets/images/email.png",height: 30,width: 30,),
                          const SizedBox(width: 10,),
                          const Text("Email -",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xff326789))),
                          const Text("nehajh0706@gmail.com ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.black)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset("lib/assets/images/location.png",height: 30,width: 30,),
                          const SizedBox(width: 10,),
                          const Text("Address -",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Color(0xff326789))),
                          const Text("Phase 1,Haridwar ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: Colors.black)),
                        ],
                      ),
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
                        Text("Edit Profile",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
