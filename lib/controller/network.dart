import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';

class NetworkUtils {
  // get response
  static Future<dynamic> getRequest(String url) async {
    try {
      final Response response = await get(Uri.parse(API_KEY), headers: {
        'Content-type': 'application/json',
      });

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {}
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
