import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/pages/customer_information.dart';
import 'package:nyntaxfluttertask1/view/widgets/input_form_widget.dart';
import 'package:nyntaxfluttertask1/view/widgets/pick_date_widget.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';

class ReservationDetailsPage extends StatefulWidget {
  const ReservationDetailsPage({super.key});

  @override
  State<ReservationDetailsPage> createState() => _ReservationDetailsPageState();
}

class _ReservationDetailsPageState extends State<ReservationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // title
            const TitleWidget(
              titleText: 'Reservation Details',
            ),
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
                  children: [
                    // reservation id
                    InputFormWidget(
                      headingText: 'Reservation ID',
                      asteric: "*",
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),

                    // pickup date
                    PickDateWidget(
                        headingText: 'Pickup Date',
                        controller: TextEditingController()),
                    const SizedBox(height: 10),

                    // return date
                    PickDateWidget(
                        headingText: 'Return Date',
                        controller: TextEditingController()),
                    const SizedBox(height: 10),

                    // dicount
                    InputFormWidget(
                      headingText: 'Dicount',
                      controller: TextEditingController(),
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
                          builder: (builder) =>
                              const CustomerInformationPage()));
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
