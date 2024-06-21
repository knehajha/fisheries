import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fisheries/waterBodies/waterBodies.dart';
import 'package:fisheries/waterBodies/waterBodyWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgetUtils.dart';

class CreateWaterBodies extends StatefulWidget {
  const CreateWaterBodies({Key? key}) : super(key: key);

  @override
  State<CreateWaterBodies> createState() => _CreateWaterBodiesState();
}

class _CreateWaterBodiesState extends State<CreateWaterBodies> {

  final _formKey = GlobalKey<FormState>();
  String? hatchery;

  var season = ["January", "February", "March", "April", "May", "June", "July", "August","September", "October", "November", "December","sdfvf"];
  var species = ["Algae eater","Fathead minnow", "GoldFish", "Golden Tench","Kio carps","Rosette","Shubunkin","Sturgeon","Golden orfes","Sunfish"];
  var waterSources = ["Stream fed","Glacier", "Pond"];
  var feedSource =["Natural food", "Supplementary feeds", "Complete feeds"];

  String? _selectedSpeciesType;
  String? _dropdownError;
  String ? _selectedSeasonType;
  String ? _selectedSourcesType;
  String ? _selectedFeedSourceType;


 seasonTypeField(){
    return DropdownButtonHideUnderline(
      child:DropdownButton2(
        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration:dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select season',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: season.map((item) =>
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
        value:  _selectedSeasonType,
        onChanged: (value) {
          setState(() {
            _selectedSeasonType = value as String;
            _dropdownError = null;
          });
        },

        itemHeight: 40,
        icon: dropDownIcon(),
      ),
    );

  }
  speciesTypeField(){
    return DropdownButtonHideUnderline(
      child:DropdownButton2(
        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration:dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select Species',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: species.map((item) =>
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
        value:  _selectedSpeciesType,
        onChanged: (value) {
          setState(() {
            _selectedSpeciesType = value as String;
            _dropdownError = null;
          });
        },

        itemHeight: 40,
        icon: dropDownIcon(),
      ),
    );

  }
  waterSourcesTypeField(){
    return DropdownButtonHideUnderline(
      child:DropdownButton2(
        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration:dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select Water Sources',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: waterSources.map((item) =>
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
        value:  _selectedSourcesType,
        onChanged: (value) {
          setState(() {
            _selectedSourcesType = value as String;
            _dropdownError = null;
          });
        },

        itemHeight: 40,
        icon: dropDownIcon(),
      ),
    );

  }
  feedTypeField(){
    return DropdownButtonHideUnderline(
      child:DropdownButton2(

        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration:dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select feed Sources',
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        items: feedSource.map((item) =>
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
        value:  _selectedFeedSourceType,
        onChanged: (value) {
          setState(() {
            _selectedFeedSourceType = value as String;
            _dropdownError = null;
          });
        },

        itemHeight: 40,
        icon: dropDownIcon(),
      ),
    );

  }


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
     appBar:AppBar(
        title:  const Text("Create Waterbody",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(key: _formKey,
                child: Column(
                  children: [

                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
            color: const Color(0xffF4F7FD),
          ),
          child: TextFormField(
              cursorColor: Colors.blueGrey,
              enableSuggestions: false,
              autocorrect: false,
              decoration:    const InputDecoration(
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
                  hintText:"WaterBody Location",
                  suffixIcon: Icon(Icons.my_location,color: Colors.red,),
                  fillColor: Color(0xFFF4F7FD))
          ),
        ),
                    const SizedBox(height: 10,),
                    waterBodyNameField("lib/assets/images/waterbody_name.png", 15.0,"Waterbody Name"),
                    const SizedBox(height: 10,),
                    getFormField("Enter waterbody name"),
                    waterBodyNameField("lib/assets/images/harvest2.png", 15.0,"Hatchery"),
                     Row(
                  children: [
                    const SizedBox(width: 15,),
                    Expanded(
                      child: RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Government",style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFFE55B4E)),
                          textAlign: TextAlign.left,
                        ),
                        value: "government",
                        groupValue: hatchery,
                        onChanged: (value){
                          setState(() {
                            hatchery = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text("Private", style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFFE55B4E)),
                          textAlign: TextAlign.left,
                        ),
                        value: "private",
                        groupValue: hatchery,
                        onChanged: (value){
                          setState(() {
                            hatchery = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),

                    waterBodyNameField("lib/assets/images/species.png", 15.0,"Species"),
                    const SizedBox(height: 10,),
                    speciesTypeField(),
                    const SizedBox(height: 10,),
                    waterBodyNameField("lib/assets/images/waterbody2.png", 15.0,"Water Source"),
                    const SizedBox(height: 10,),
                    waterSourcesTypeField(),
                    const SizedBox(height: 10,),
                    waterBodyNameField("lib/assets/images/feed.png", 15.0,"Feed Source"),
                    const SizedBox(height: 10,),
                    feedTypeField(),
                    const SizedBox(height: 10,),
                    waterBodyNameField("lib/assets/images/chart_area.png", 15.0,"Area of the Waterbody"),
                    const SizedBox(height: 10,),
                    getFormField("Enter Area"),
                    const SizedBox(height: 10,),
                    waterBodyNameField("lib/assets/images/season.png", 15.0,"Season"),
                    const SizedBox(height: 10,),
                    seasonTypeField(),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                      Get.to( const WaterBodies());
                    },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
                        primary: const Color(0xffE55B4E),
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child:
                      const Text("Proceed",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffF4F7FD)),
                      ),
                    ),
                  ],
                ),

              )

            ],
          ),
        ),
      )
      );

  }
}