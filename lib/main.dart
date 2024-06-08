import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/controller/additional_charge_controller.dart';
import 'package:nyntaxfluttertask1/controller/customer_info_controller.dart';
import 'package:nyntaxfluttertask1/controller/reservation_controller.dart';
import 'package:nyntaxfluttertask1/view/pages/reservation_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReservationController()),
        ChangeNotifierProvider(
            create: (context) => CustomerInformationController()),
        ChangeNotifierProvider(
            create: (context) => AdditionalChargeController()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: const ReservationDetailsPage(),
      ),
    );
  }
}
