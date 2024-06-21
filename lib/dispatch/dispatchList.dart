import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../harvest/harvest.dart';
import '../waterBodies/waterBodyWidgets.dart';
import '../widgetUtils.dart';
import 'dispatchAdd.dart';

class DispatchList extends StatefulWidget {
  const DispatchList({Key? key}) : super(key: key);

  @override
  State<DispatchList> createState() => _DispatchListState();
}

class _DispatchListState extends State<DispatchList> {

  var vendorType = [
    " Uttrakhand FisherMan",
  ];

  String? _selectedVendorType;
  String? _dropdownError;

  colorTypeField() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        buttonHeight: 55,
        buttonWidth: double.infinity,
        buttonDecoration: dropdownDecorationFill(),
        hint: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Select Vendor',
            style: TextStyle(
              fontSize: 12,
              color: Theme
                  .of(context)
                  .hintColor,
            ),
          ),
        ),
        items: vendorType.map((item) =>
            DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(item ?? "",
                  style: const TextStyle(fontSize: 14,),
                ),
              ),
            ))
            .toList(),
        value: _selectedVendorType,
        onChanged: (value) {
          setState(() {
            _selectedVendorType = value as String;
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
  vertical: 20,));

  }
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   const Text("Dispatch",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
       body: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        color:  const Color(0xfff4f7fd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 380,
                            height: 90.0,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.25,color:  const Color(0x8B326789)),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF4F7FD),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.only(bottom:10.0,left: 15),
                              child: IntrinsicHeight(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    harvestDetails("waterbody", "Water sources", "Glacier",),
                                    const SizedBox(width: 50,),
                                    verticalDivider,
                                    const SizedBox(width: 50,),
                                    harvestDetails("weight", "Weight", "60.0kg",),
                                  ],
                                ),
                              ),

                            ),

                          ),
                        )
                    );
                  }),
              const SizedBox(height: 10,),
              createSampleField("Select Vendor"),
              const SizedBox(height: 10,),
              colorTypeField(),

              FloatingActionButton(onPressed:

                 (){
                    Get.to( const DispatchAdd());
                  },
                backgroundColor: const Color(0xFFE55B4E),
                child: const Icon(Icons.add,),
              ),
  ],
          ),
       ),

    );
  }
}
