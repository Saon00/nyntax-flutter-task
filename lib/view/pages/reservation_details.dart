

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nyntaxfluttertask1/controller/reservation_controller.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';
import 'package:nyntaxfluttertask1/view/pages/customer_information.dart';
import 'package:nyntaxfluttertask1/view/widgets/input_form_widget.dart';
import 'package:nyntaxfluttertask1/view/widgets/pick_date_widget.dart';
import 'package:nyntaxfluttertask1/view/widgets/title_widget.dart';
import 'package:provider/provider.dart';

class ReservationDetailsPage extends StatefulWidget {
  const ReservationDetailsPage({super.key});

  @override
  State<ReservationDetailsPage> createState() => _ReservationDetailsPageState();
}

class _ReservationDetailsPageState extends State<ReservationDetailsPage> {
  final TextEditingController _reservationController = TextEditingController();
  final TextEditingController _discountController = TextEditingController();
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();
  String _startHintText = 'Select Date and Time';
  String _endHintText = 'Select Date and Time';
  String _duration = '';

  DateTime? _startDateTime;
  DateTime? _endDateTime;

  int days = 0;
  int hours = 0;
  int weeks = 0;
  int remainingDays = 0;

  Future<void> _selectDateTime(BuildContext context, bool isStart) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2050),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        final DateTime pickedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        setState(() {
          final formattedDateTime =
              DateFormat('hh:mm a, dd MMMM yyyy').format(pickedDateTime);
          if (isStart) {
            _startDateTime = pickedDateTime;
            _startHintText = formattedDateTime;
            _startController.text = _startHintText;
          } else {
            _endDateTime = pickedDateTime;
            _endHintText = formattedDateTime;
            _endController.text = _endHintText;
          }
          _updateDuration();
        });
      }
    }
  }

  void _updateDuration() {
    if (_startDateTime != null && _endDateTime != null) {
      final Duration difference = _endDateTime!.difference(_startDateTime!);
      days = difference.inDays;
      hours = difference.inHours % 24;
      weeks = days ~/ 7;
      remainingDays = days % 7;

      setState(() {
        _duration = '$weeks Week $remainingDays Days $hours Hour';
      });
    }
  }

  @override
  void dispose() {
    _startController.dispose();
    _endController.dispose();
    _discountController.dispose();
    _reservationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ReservationController reservationProvider =
        Provider.of<ReservationController>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                        controller: _reservationController,
                      ),
                      const SizedBox(height: 10),

                      // pickup date
                      PickDateWidget(
                          hintText: _startHintText,
                          ontap: () {
                            _selectDateTime(context, true);
                          },
                          headingText: 'Pickup Date',
                          controller: _startController),
                      const SizedBox(height: 10),

                      // return date
                      PickDateWidget(
                          hintText: _endHintText,
                          ontap: () {
                            _selectDateTime(context, false);
                          },
                          headingText: 'Return Date',
                          controller: _endController),
                      const SizedBox(height: 10),

                      // duration
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Duration'),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: greyColor.withOpacity(.5))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: _duration.isNotEmpty
                                  ? Text(
                                      _duration,
                                      style: TextStyle(color: greyColor),
                                    )
                                  : Text(
                                      "Null",
                                      style: TextStyle(color: greyColor),
                                    ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),

                      // dicount
                      InputFormWidget(
                        headingText: 'Dicount',
                        controller: _discountController,
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
                    reservationProvider.setReservationID(
                        _reservationController.text.toString());

                    reservationProvider
                        .setPickUpDate(_startController.text.toString());

                    reservationProvider
                        .setReturnUpDate(_endController.text.toString());

                    reservationProvider.getDates(hours, remainingDays, weeks);
                    reservationProvider
                        .setDiscount(_discountController.text.toString());

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const CustomerInformationPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      "Next",
                      style: TextStyle(color: whiteColor),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
