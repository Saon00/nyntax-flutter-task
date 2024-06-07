import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Reservation Details
              const TitleWidget(titleText: 'Reservation Details'),
              const SizedBox(height: 20),
              // container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: greyColor.withOpacity(.5))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Reservation ID'), Text('101')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Pickup Date'), Text('101')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('DropOff Date'), Text('101')],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Customer Information
              const TitleWidget(titleText: 'Customer Information'),
              const SizedBox(height: 20),
              // container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: greyColor.withOpacity(.5))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('First Name'), Text('Ryan')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Last Name'), Text('Ramos')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Email'), Text('ryan@gmail.com')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Phone'), Text('+001001010')],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Vehicle Information
              const TitleWidget(titleText: 'Vehicle Information'),
              const SizedBox(height: 20),
              // container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: greyColor.withOpacity(.5))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Vehicle Type'), Text('Sedan')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Vehicle Model'), Text('Toyota Camry')],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Charges Summary
              const TitleWidget(titleText: 'Charges Summary'),
              const SizedBox(height: 20),
              // container
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffdfdfff),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: primaryBlue)),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Vehicle Type'), Text('Sedan')],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Vehicle Model'), Text('Toyota Camry')],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
