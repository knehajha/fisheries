import 'package:fisheries/dispatch/dispatchList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import '../widgetUtils.dart';

class DispatchAdd extends StatefulWidget {
  const DispatchAdd({Key? key}) : super(key: key);

  @override
  State<DispatchAdd> createState() => _DispatchAddState();
}

class _DispatchAddState extends State<DispatchAdd> {


  final _formKey = GlobalKey<FormState>();
  final TextEditingController _barCodeTxtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title:   const Text("Add Box",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff326789))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Form(key:_formKey ,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              createSampleField("Barcode"),
              const SizedBox(height: 10,),
          TextFormField(
            cursorColor: Colors.blueGrey,
            enableSuggestions: false,
            controller: _barCodeTxtController,
            autocorrect: false,
            decoration:     InputDecoration(
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
                hintText:"Enter Barcode",
                suffixIcon:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(onTap: () async {

                    var res = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SimpleBarcodeScannerPage(),
                        ));

                    setState(() {
                      _barCodeTxtController.text = res;
                    });

                  },
                      child:
                  const ImageIcon(AssetImage('lib/assets/images/scanBarcode.png'),color: Colors.red,)),
                ),
                fillColor: const Color(0xFFF4F7FD)),
          ),
              const SizedBox(height: 10,),
              createSampleField("Gross Weight"),
              const SizedBox(height: 10,),
              addBoxField("Enter gross weight(kg)"),
              const SizedBox(height: 10,),
              createSampleField("Net Weight"),
              const SizedBox(height: 10,),
              addBoxField("Enter net weight(kg)"),
              const SizedBox(height: 10,),
              createSampleField("Fish Count"),
              const SizedBox(height: 10,),
              addBoxField("Enter Fish count"),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: (){
                Get.to( const DispatchList());
              },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 170.0, vertical: 15.0),
                  primary: const Color(0xffE55B4E),
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child:
                const Text("ADD",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xffF4F7FD)),
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
