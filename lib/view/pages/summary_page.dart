import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/controller/customer_info_controller.dart';
import 'package:nyntaxfluttertask1/controller/reservation_controller.dart';
import 'package:nyntaxfluttertask1/model/additional_charge_model.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';
import 'package:provider/provider.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage(
      {super.key, required List<AdditionalCharge> selectedCharges});

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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Consumer<ReservationController>(
                    builder: (context, value, child) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Reservation ID'),
                            Text(value.reservationID)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Pickup Date'),
                            Text(value.pickupdate)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('DropOff Date'),
                            Text(value.returndate)
                          ],
                        ),
                      ],
                    ),
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Consumer<CustomerInformationController>(
                    builder: (context, value, child) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('First Name'),
                            Text(value.firstName)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Last Name'),
                            Text(value.lastName)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [const Text('Email'), Text(value.email)],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [const Text('Phone'), Text(value.phone)],
                        ),
                      ],
                    ),
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Charge',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(color: primaryBlue),
                      const SizedBox(height: 10),
                      // Provider.of<AdditionalChargeController>(context).isTick1 ?

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Net Total',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$399.00',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
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
