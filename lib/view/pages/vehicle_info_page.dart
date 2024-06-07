import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/controller/network.dart';
import 'package:nyntaxfluttertask1/model/car_rent_model.dart';
import 'package:nyntaxfluttertask1/view/pages/additional_charges.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';

class VehicleInfoPage extends StatefulWidget {
  const VehicleInfoPage({super.key});

  @override
  State<VehicleInfoPage> createState() => _VehicleInfoPageState();
}

class _VehicleInfoPageState extends State<VehicleInfoPage> {
  // List<String> batchDropDownItem = <String>[
  //   '--select vehicle type--',
  //   'Sedan',
  //   'SUV',
  // ];
  // String batchDropDownValue = '--select vehicle type--';
  List<String> batchDropDownItem = <String>[];
  String batchDropDownValue = '--select vehicle type--';

  // Future<CarRentModel> getcarmodel() async {
  //   try {
  //     final result = await NetworkUtils.getMethod(API_KEY);
  //   } on SocketOption {
  //     throw Exception('Network Error');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Back',
          style: TextStyle(fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // title
            const TitleWidget(titleText: 'Vehicle Information'),
            const SizedBox(height: 20),

            // container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: greyColor.withOpacity(.5))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // vehicle type
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: 'Vehicle Type',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      TextSpan(
                          text: '*',
                          style: TextStyle(
                              fontSize: 15,
                              color: redColor,
                              fontFeatures: const [FontFeature.superscripts()]))
                    ])),
                    const SizedBox(height: 5),

                    DropdownButtonFormField<String>(
                      // hint: const Text('Select Batch'),
                      isExpanded: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items: batchDropDownItem.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: greyColor),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          batchDropDownValue = newValue!;
                        });
                      },
                      value: batchDropDownValue,
                    ),
                    const SizedBox(height: 10),

                    // vehicle model
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: 'Vehicle Model',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      TextSpan(
                          text: '*',
                          style: TextStyle(
                              fontSize: 15,
                              color: redColor,
                              fontFeatures: const [FontFeature.superscripts()]))
                    ])),
                    const SizedBox(height: 5),

                    TextFormField(
                      cursorColor: primaryBlue,
                      keyboardType: TextInputType.text,
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            color: greyColor,
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: greyColor)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: greyColor)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: greyColor.withOpacity(.5)))),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 50),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: primaryBlue),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const AdditionalChargesPage()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    "Next",
                    style: TextStyle(color: whiteColor),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
