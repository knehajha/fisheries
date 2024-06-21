import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../otp/otpScreen.dart';
import '../profile/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(

          child: Column(
            children: [
              const Text("Continue with Phone",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color:Color(0xff161F47)),),
              const SizedBox(height: 20,),
              const Text("We'll send one time password\n      on this phone number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Color(0xff326789)),),
              const SizedBox(height: 20,),
            Image.asset("lib/assets/images/login.png",height: 180,width: 180,),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.only(right:150),
                child: Text("Enter your Phone Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color:Color(0xff818181))),),
              const SizedBox(height: 20,),
              Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffF4F7FD),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.blueGrey,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
                          hintText:"Enter your mobile number",
                          fillColor: Color(0xFFF4F7FD))


                    ),
                  )),
              const SizedBox(height: 100,),
            Center(
              child: ElevatedButton(onPressed: (){
                Get.to( const OtpScreen());
              },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 140.0, vertical: 15.0),
                  primary: const Color(0xffE55B4E),
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child:
                const Text("SEND OTP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffF4F7FD)),
                ),
              ),
            )



          ]),
        ),
      ),

    );
  }
}
