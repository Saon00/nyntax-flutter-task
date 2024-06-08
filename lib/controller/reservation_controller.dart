import 'package:flutter/material.dart';

class ReservationController extends ChangeNotifier {
  String _reservationID = "";
  String _pickupdate = "";
  String _returndate = "";
  int _days = 0;
  int _hours = 0;
  int _weeks = 0;
  String _discount = "";

  String get reservationID => _reservationID;
  String get pickupdate => _pickupdate;
  String get returndate => _returndate;
  int get hours => _hours;
  int get days => _days;
  int get weeks => _weeks;
  String get discount => _discount;

  void setDiscount(String discount) {
    _discount = discount;
    notifyListeners();
  }

  void setReservationID(String reservationID) {
    _reservationID = reservationID;
    notifyListeners();
  }

  void setPickUpDate(String pickupdate) {
    _pickupdate = pickupdate;
    notifyListeners();
  }

  void setReturnUpDate(String returndate) {
    _returndate = returndate;
    notifyListeners();
  }

  void getDates(int hours, int days, int weeks) {
    _weeks = weeks;
    _days = days;
    _hours = hours;
    notifyListeners();
  }
}

/*
String? _reservationID = '';
  String? _startDateTime = '';
  String? _endDateTime = '';
  double? _discount = 0;
  int? _hour = 0;
  int? _week = 0;
  int? _day = 0;

  String? get reservationID => _reservationID;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  double? get discount => _discount;
  int? get hour => _hour;
  int? get week => _week;
  int? get day => _day;

  void setDates(int week, int day, int hour) {
    _week = week;
    _day = day;
    _hour = hour;
    notifyListeners();
  }

  void setReservationID(String id) {
    _reservationID = id;
    notifyListeners();
  }

  void setStartDateTime(String dateTime) {
    _startDateTime = dateTime;
    notifyListeners();
  }

  void setEndDateTime(String dateTime) {
    _endDateTime = dateTime;
    notifyListeners();
  }

  void setDiscount(double dateTime) {
    _discount = discount;
    notifyListeners();
  }
*/