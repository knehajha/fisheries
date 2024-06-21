import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fisheries/waterBodies/waterBodyWidgets.dart';
import 'package:fisheries/widgetUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'mySample.dart';

class TakeSample extends StatefulWidget {
  const TakeSample({Key? key}) : super(key: key);

  @override
  State<TakeSample> createState() => _TakeSampleState();
}

class _TakeSampleState extends State<TakeSample> {

  PickedFile? _imageFile;
  final ImagePicker picker = ImagePicker();

  Future takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile!;
    });

  }
  Widget getProfilePicView(){
    if(_imageFile == null){
      return const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("lib/assets/images/profile_pic.png")
      );
    }else{
      return CircleAvatar(
          radius: 50,
          backgroundImage: FileImage(File(_imageFile!.path))
      );
    }
  }

  final _formKey = GlobalKey<FormState>();
  var color = ["10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"];
  String? _selectedColor;
  String? _dropdownError;

  colorTypeField(){
    return DropdownButtonHideUnderline(
      child:DropdownButton2(
        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration:dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select colouration',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: color.map((item) =>
            DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(item??"",
                  style: const TextStyle(fontSize: 14,),
                ),
              ),
            ))
            .toList(),
        value:  _selectedColor,
        onChanged: (value) {
          setState(() {
            _selectedColor = value as String;
            _dropdownError = null;
          });
        },

        itemHeight: 40,
        icon: dropDownIcon(),
      ),
    );

  }
  getPicture()=> showModalBottomSheet(context: context,
  builder: (BuildContext context) {
    return Container(
        height: 100,
        width: MediaQuery
            .of(context)
            .size
            .width,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Text("Choose Profile Picture",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.camera, color: Colors.black,),
                    onPressed: () {
                      takePhoto(ImageSource.camera);
                    }, label: const Text("Camera",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      )),),
                  const SizedBox(width: 30,),

                  TextButton.icon(
                    icon: const Icon(Icons.image, color: Colors.black,),
                    onPressed: () {
                      takePhoto(ImageSource.gallery);
                    }, label: const Text("Gallery",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      )),),
                ]),

          ],
        ));
  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
            title:   const Text("Create Samples",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),

      ),

      body: SingleChildScrollView(
      child: Padding(
    padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
               createSampleField("Enter date & Time"),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF4F7FD),
              ),
              child: TextFormField(
                  cursorColor: Colors.blueGrey,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration:  const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      filled: true,
                      suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.calendar_month,
                          )),
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
                      hintText:"Enter Date& time",
                      fillColor: Color(0xFFF4F7FD)),
              ),
            ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(
                    child: Column(

                      children: [
                        createSampleField("Fish Weight"),
                        const SizedBox(height: 10,),
                        TextFormField(
                          cursorColor: Colors.blueGrey,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration:  const InputDecoration(

                              contentPadding: EdgeInsets.only(),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 11),
                              hintText:"Enter weight",
                              fillColor: Color(0xFFF4F7FD)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60),

                      child: Column(
                        children: [
                          createSampleField("Fish Length"),
                          const SizedBox(height: 10,),
                          TextFormField(
                          cursorColor: Colors.blueGrey,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration:  const InputDecoration(
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
                              hintText:"Enter Length",
                              fillColor: Color(0xFFF4F7FD)),
                  ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              createSampleField("Colouration"),
              const SizedBox(height: 20,),
              colorTypeField(),
              const SizedBox(height: 20,),
              OutlinedButton(onPressed: (
                  ){
                Get.to(getPicture());
              },
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2.0, color: Colors.red),
                  padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0,),
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  ), child: Row(
                    children:  const [
                      Icon(
                        Icons.camera_alt_outlined,color: Colors.red,
                      ),
                      SizedBox(width: 10,),
                      Text("Take Sample Picture",style: TextStyle(color:Colors.red, fontSize: 12, fontWeight: FontWeight.bold),),
                    ],

                  )),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Get.to( const MySample());
              },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 170.0, vertical: 15.0),
                  primary: const Color(0xffE55B4E),
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child:
                Text("Add",style: GoogleFonts.varela(fontSize: 18,fontWeight: FontWeight.bold,color:const Color(0xffF4F7FD)),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
