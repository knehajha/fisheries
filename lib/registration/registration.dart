import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fisheries/dashBoard2/dashboard2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../widgetUtils.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override


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
  var userType = [
    "FisherMan",
    "Vender",
    "Outlet"
  ];

  String? selectedUserType;
  String? _dropdownError;


  final _formKey = GlobalKey<FormState>();
  nameField(){
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
          labelText: "Name",
          labelStyle: const TextStyle(color: Colors.green),
          hintText: "Neha",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value)=>value!.isEmpty?"Please enter Name":null,
    );
  }
  emailField(){
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        labelText: "Email",
        labelStyle: const TextStyle(color: Colors.green),
        hintText: "nehajha89@gmail.com",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value)=>value!.isEmpty?"Please enter your email":null,
    );
  }
  mobileField(){
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        labelText: "Mobile NUmber",
        labelStyle: const TextStyle(color: Colors.green),
        hintText: "nehajha89@gmail.com",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value)=>value!.isEmpty?"Please enter your email":null,
    );
  }
  emailTypeField(){
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        labelText: "",
        labelStyle: const TextStyle(color: Colors.green),
        hintText: "nehajha8966@gmail.com",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value)=>value!.isEmpty?"Please enter your email":null,
    );
  }

  userTypeField(){
    return DropdownButtonHideUnderline(
        child:DropdownButton2(
          buttonHeight: 55,
          buttonWidth: double.infinity,
          buttonDecoration:dropdownDecoration(),
          hint: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Select user type',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
          ),
          items: userType.map((item) =>
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
          value: selectedUserType,
          onChanged: (value) {
            setState(() {
              selectedUserType = value as String;
              _dropdownError = null;
            });
          },

          itemHeight: 40,
          icon: dropDownIcon(),
        ),
    );

  }

  addressField(){
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        labelText: "Address",
        labelStyle: const TextStyle(color: Colors.green),
        hintText: "Phase1 Patanjali, Haridwar",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      validator: (value)=>value!.isEmpty?"Please enter your email":null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                    children: <Widget> [
                      getProfilePicView(),
                      Positioned(
                          bottom: 0,right: 10,
                          child:InkWell(
                            onTap: (){
                              showModalBottomSheet(context: context,
                                  builder: (BuildContext context){
                                    return Container(
                                        height: 100,
                                        width: MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 20,
                                        ),
                                        child: Column(
                                          children: [
                                            const Text("Choose Profile Picture",
                                                style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                )),
                                            const SizedBox(height: 20,),
                                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  TextButton.icon(icon: const Icon(Icons.camera,color: Colors.black,),
                                                    onPressed: () {
                                                      takePhoto(ImageSource.camera);
                                                    }, label:  const Text("Camera",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                        )), ),
                                                  const SizedBox(width: 30,),

                                                  TextButton.icon(icon: const Icon(Icons.image,color: Colors.black,),
                                                    onPressed: () {
                                                      takePhoto(ImageSource.gallery);

                                                    }, label:  const Text("Gallery",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                        )), ),
                                                ]),

                                          ],
                                        ) );
                                  }

                              );
                            },
                            child:Stack(children:[ Image.asset("lib/assets/images/circleWhite.png",height: 35,width: 35,),
                              const Positioned(
                                left: 8,top: 7,
                                child: Icon(Icons.camera_alt_outlined,size: 20,color: Color(0xFFE55B4E),)
                                ),
                              ]),
          )
                      )
                      ]

                ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 2,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Form(key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only( left: 10.0, right: 10.0, top: 30.0),
                    child: Column(
                    children: [
                      nameField(),
                      const SizedBox(height: 20),
                      emailField(),
                      const SizedBox(height: 20),
                      userTypeField(),
                      const SizedBox(height: 20),
                      mobileField(),

                      const SizedBox(height: 20),
                    addressField(),
                    const SizedBox(height: 40),
                      ElevatedButton(onPressed: (){
                        Get.to( const Dashboard2());
                      },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 140.0, vertical: 15.0),
                          primary: const Color(0xffE55B4E),
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        child:
                        const Text("Submit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffF4F7FD)),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                ),
                  ) ,
                     ),
              ),
            )
            ]),
          ),
        ),
      ),
    );
  }
}

