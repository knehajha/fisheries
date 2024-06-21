import 'package:fisheries/dispatch/dispatch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);



  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar:AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,

        title: Row(

          children: [
            const ClipOval(child: Image(
              image: AssetImage("lib/assets/images/profileIcon.png"),
              height: 45,
              width: 45,
            ),),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(padding: EdgeInsets.only(right: 10),
                    child: Text("Welcome",style: TextStyle(color:Color(0xff326789), fontSize: 15, fontWeight: FontWeight.w500),)),
                Padding(padding: EdgeInsets.only(left: 11),
                    child:Text("Amit Sharma",style: TextStyle(color:Color(0xffE55B4E), fontSize: 18, fontWeight: FontWeight.bold),)),

              ],

            ),

            Image.asset("lib/assets/images/notify.png",height: 2,width: 2,color: const Color(0xff8D8D8D),),

          ],
        ),

      ) ,
      body: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 40),
            child: Row(
              children: [
                Container(
                  height: 170,
                  width: 120,
                  decoration:  BoxDecoration(
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffDBF0FD),
                  ),
             child: Column(
               children:[
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 45,width: 45,),
                Positioned(
                  left: 8,top: 7,right: 6,bottom: 5,
                  child: Image.asset("lib/assets/images/inwardPending.png",height: 40,width: 40,
                  ),
                )]),
                 ),
              const SizedBox(height: 10,),
              const Text(" Inward \n pending",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                 const SizedBox(height:10 ,),
                 const Text("500",style: TextStyle(color:Color(0xffE55B4E), fontSize: 18, fontWeight: FontWeight.bold),),
               ]
             )

                ),
                const SizedBox(width: 10,),
                Container(
                  height: 170,
                  width: 120,
                  decoration:  BoxDecoration(
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEAE8FD),
                  ),
                  child: Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 45,width: 45,),
                            Image.asset("lib/assets/images/delivery-truck.png",height: 45,width: 45,
                            )]),
                        ),
                        const SizedBox(height: 10,),
                        const Text(" Dispatch\n Orders",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                        const SizedBox(height:10 ,),
                        const Text("500",style: TextStyle(color:Color(0xffE55B4E), fontSize: 18, fontWeight: FontWeight.bold),),
                      ]
                  ),


                ),
                const SizedBox(width: 10,),
                Container(
                  height: 170,
                  width: 120,
                  decoration:  BoxDecoration(
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFEEE6),
                  ),
                  child: Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 45,width: 45,),
                            Image.asset("lib/assets/images/rejected.png",height: 45,width: 45,
                            )]),
                        ),
                        const SizedBox(height: 10,),
                        const Text(" Rejected \n Orders",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                        const SizedBox(height:10 ,),
                        const Text("500",style: TextStyle(color:Color(0xffE55B4E), fontSize: 18, fontWeight: FontWeight.bold),),
                      ]
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
            child: Container(
              height: 70,
              width: double.infinity
              ,
              decoration:  BoxDecoration(
                color: const Color(0xffF4F7FD),
                borderRadius: BorderRadius.circular(20),
              ),
            child: Row(
              children: [
                Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 50,width: 50,color: const Color(0xffDBF0FD),),
                  Positioned(
                    left: 8,top: 7,
                    child: Image.asset("lib/assets/images/inwardPending.png",height: 35,width: 35,
                    ),
                  )]),
                const SizedBox(width: 10,),
                const Text(" Inwards Orders",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
             const Spacer(),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.redAccent,
                  size: 25.0,
                ),

              ],

            ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
            child: InkWell(
              onTap: (){
                Get.to( const Dispatch());
              },
              child: Container(
                height: 70,
                width: double.infinity
                ,
                decoration:  BoxDecoration(
                  color: const Color(0xffF4F7FD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 50,width: 50,color: const Color(0xffEAE8FD),),
                      Positioned(
                        left: 8,top: 7,
                        child: Image.asset("lib/assets/images/delivery-truck.png",height: 35,width: 35,
                        ),
                      )]),
                    const SizedBox(width: 10,),
                    const Text("Sell/Dispatch",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.redAccent,
                      size: 25.0,
                    ),

                  ],

                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
            child: Container(
              height: 70,
              width: double.infinity
              ,
              decoration:  BoxDecoration(
                color: const Color(0xffF4F7FD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Stack(children:[ Image.asset("lib/assets/images/circlePink.png",height: 50,width: 50,),
                    Positioned(
                      left: 12,top: 8,

                      child: Image.asset("lib/assets/images/orderHistory.png",height: 30,width: 30,
                      ),
                    )]),
                  const SizedBox(width: 10,),
                  const Text("Order History",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.redAccent,
                    size: 25.0,
                  ),

                ],

              ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
            child: Container(
              height: 70,
              width: double.infinity
              ,
              decoration:  BoxDecoration(
                color: const Color(0xffF4F7FD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Stack(children:[ Image.asset("lib/assets/images/circlePink.png",height: 50,width: 50,),
                    Positioned(
                      left: 12,top: 8,
                      child: Image.asset("lib/assets/images/orderHistory.png",height: 30,width: 30,
                      ),
                    )]),
                  const SizedBox(width: 10,),
                  const Text("Order History",style: TextStyle(color:Color(0xff326789), fontSize: 14, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.redAccent,
                    size: 25.0,
                  ),

                ],

              ),
            ),
          ),



        ],
      ),
    );
  }
}
