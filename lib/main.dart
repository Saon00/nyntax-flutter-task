import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/reservation_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const ReservationDetailsPage(),
    );
  }
}
