import 'package:fisheries/widgetUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Registration/registration.dart';
import '../profile/profile.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Center(
   child: SingleChildScrollView(

     child: Column(
       children: [
         const Text("Verify Mobile Number",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color:Color(0xff161F47)),),
         const SizedBox(height: 20,),
         const Center(child: Text("        We sent a verification code to\n  1122334455,Enter to code below boxes",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Color(0xff326789)),)),
         const SizedBox(height: 20,),
         Image.asset("lib/assets/images/password.png",height: 220,width: 220,),
         const SizedBox(height: 40,),
         const Align(child:Align(alignment: Alignment.center,child: Text("Enter verification Code",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color:Color(0xff818181)),)),
         ),
         const SizedBox(height: 20,),
         OtpTextField(
           fieldWidth: 44,
           numberOfFields: 6,
           borderColor: const Color(0xFF512DA8),
           showFieldAsBox: true,
           onCodeChanged: (String code) {
           },
           onSubmit: (String verificationCode){
             showDialog(
                 context: context,
                 builder: (context){
                   return AlertDialog(
                     title: const Text("Verification Code"),
                     content: Text('Code entered is $verificationCode'),
                   );
                 }
             );
           }, // end onSubmit
         ),
         const SizedBox(height: 30,),
         Center(
           child: ElevatedButton(onPressed: (){
             Get.to( const Registration());
           },
             style: ElevatedButton.styleFrom(
               padding: const EdgeInsets.symmetric(horizontal: 140.0, vertical: 15.0),
               primary: const Color(0xffE55B4E),
               shape:  RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25.0),
               ),
             ),
             child:
             const Text("VERIFY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffF4F7FD)),
             ),
           ),
         )],



     ),
   ),
 ),
    );
  }
}
