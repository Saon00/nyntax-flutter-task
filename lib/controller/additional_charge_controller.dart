import 'package:flutter/material.dart';

class AdditionalChargeController extends ChangeNotifier {
  final Map<int, bool> _selectedCharges = {};

  void setSelected(int chargeId, bool isSelected) {
    _selectedCharges[chargeId] = isSelected;
    notifyListeners();
  }

  bool isSelected(int chargeId) {
    return _selectedCharges.containsKey(chargeId)
        ? _selectedCharges[chargeId]!
        : false;
  }
}

