import 'package:flutter/material.dart';

class CustomerInformationController extends ChangeNotifier {
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _phone = "";

  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  String get phone => _phone;

  void setCustomerInfo(String fName, String lName, String email, String phone) {
    _firstName = fName;
    _lastName = lName;
    _email = email;
    _phone = phone;
    notifyListeners();
  }
}
