
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





dropDownIcon(){
  return const Padding(
    padding: EdgeInsets.only(left: 8.0,right: 8),
    child: Icon(Icons.arrow_drop_down,color: Colors.redAccent,),
  );
}
BoxDecoration dropdownDecoration() {
  return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      color: Colors.white,
      border: Border.all(
          color: const Color(0xFFB3B1B1), style: BorderStyle.solid, width: 1));
}
Widget getProfilePicView(File? imageFile, double radius){
  if(imageFile == null){
    return CircleAvatar(
        radius: radius,
        backgroundImage: const AssetImage("lib/assets/images/profile_pic.png")
    );
  }else{
    return CircleAvatar(
        radius: radius,
        backgroundImage: FileImage(imageFile)
    );
  }
}
List<Widget> getBannerBody() {
  List<Widget> wlist = [];
  List<String> urls = [
    "lib/assets/images/slider1.png",
    "lib/assets/images/slider2.png",
    "lib/assets/images/slider3.png",

  ];
  urls.forEach((url) {
    Container container = Container(
      margin: const EdgeInsets.all(8.0),
      decoration: getBannerDecoration(url),
    );

    wlist.add(container);
  });

  return wlist;
}


Decoration getBannerDecoration(String url){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    image: DecorationImage(
      image: AssetImage(url),
      fit: BoxFit.cover,
    ),
  );
}

Widget customGrid(Color color, String iconName, String title, String value){
  return Container(
    height: 120,
    width: 120,
    decoration:  BoxDecoration(
      shape:BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      color: color,// Color(0xffFFEEE6),
    ),
    child: Column(
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 45,width: 45,),
              Positioned(
                left: 9,bottom: 9,
                child: Image.asset("lib/assets/images/$iconName",height: 25,width: 25,
                ),
              )]),
          ),
          const SizedBox(height: 10,),
          Text(title,style: const TextStyle(color:Color(0xff326789), fontSize: 12,fontWeight: FontWeight.w400),),
          const SizedBox(height:10 ,),
          Text(value,style: const TextStyle(color:Color(0xffE55B4E), fontSize: 14, fontWeight: FontWeight.bold),),
        ]
    ),

  );
}

Widget customContainer(String name,String circleColor,String circleImage){
  return  Container(
    height: 70,
    width: double.infinity
    ,
    decoration:  BoxDecoration(
      color: const Color(0xffF4F7FD),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Stack(children:[ Image.asset("lib/assets/images/$circleColor",height: 50,width: 50,),
          Positioned(
            left: 14,top: 14,
            child: Image.asset("lib/assets/images/$circleImage",height: 20,width: 20,
            ),
          )]),
        const SizedBox(width: 10,),
         Text(name,style: const TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
        const Spacer(),
        const Icon(
          Icons.arrow_forward,
          color: Colors.redAccent,
          size: 25.0,
        ),

      ],

    ),
  );
}

Widget wbDetails(String wbCircleColor,String wbCircleImage,String heading,String name,){

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Center(
        child: Stack(children:[ Image.asset("lib/assets/images/$wbCircleColor.png",height: 30,width: 30,),
          Positioned(
            left: 7,top: 7,
            child: Image.asset("lib/assets/images/$wbCircleImage.png",height: 15,width: 15,
            ),
          )]),
      ),
      Text(heading,style: const TextStyle(color:Colors.grey, fontSize: 10, fontWeight: FontWeight.normal),),
      Text(name,style: const TextStyle(color:Colors.black, fontSize: 12, fontWeight: FontWeight.normal),),
    ],
  );
}


Widget harvestDetails(String image,String heading,String name,){

  return Row(

    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset("lib/assets/images/$image.png",height: 27,width: 27,
        ),
      ),
      const SizedBox(width: 10,),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(heading,style: const TextStyle(color:Colors.grey, fontSize: 10, fontWeight: FontWeight.normal),),
            const SizedBox(height: 10,),
            Text(name,style: const TextStyle(color:Colors.black, fontSize: 12, fontWeight: FontWeight.normal),),
          ],
        ),
      )
    ],
  );
}




Widget sampleDetails(String circleColor,String circleImage,String heading,String name,){

  return Row(

    children: [
      Center(
        child: Stack(children:[ Image.asset("lib/assets/images/$circleColor.png",height: 30,width: 30,),
          Positioned(
            left: 7,top: 7,
            child: Image.asset("lib/assets/images/$circleImage.png",height: 15,width: 15,
            ),
          )]),
      ),
      const SizedBox(width: 10,),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(

          children: [
            Text(heading,style: const TextStyle(color:Colors.grey, fontSize: 10, fontWeight: FontWeight.normal),),
            const SizedBox(height: 10,),
            Text(name,style: const TextStyle(color:Colors.black, fontSize: 12, fontWeight: FontWeight.normal),),
          ],
        ),
      )
    ],
  );
}

Widget appBarDetails( BuildContext context, String title,){
  return AppBar(
    title:Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(CupertinoIcons.back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    );
}

Widget createdSampleDetails(circleColor,circleImage,name,value)=>
Row(
children: [
Center(
child: Stack(children:[ Image.asset("lib/assets/images/$circleColor.png",height: 30,width: 30,),
Positioned(
left: 7,top: 7,
child: Image.asset("lib/assets/images/$circleImage.png",height: 15,width: 15,
),
)]),
),
const SizedBox(width: 10,),
Text(name,style: const TextStyle(color:Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),),

const Spacer(),
Text(value,style: const TextStyle(color:Colors.red, fontSize: 12, fontWeight: FontWeight.bold),)
],
);




Widget createSampleField( String name) =>
Text(name,style: const TextStyle(color:Colors.black, fontSize: 14, fontWeight: FontWeight.bold),);

Widget addBoxField(String name)=>
    TextFormField(
      cursorColor: Colors.blueGrey,
      enableSuggestions: false,
      autocorrect: false,
      decoration:   InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          filled: true,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 11),
          hintText:name,
          fillColor: const Color(0xFFF4F7FD)),
    );









