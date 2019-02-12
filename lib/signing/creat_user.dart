import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void addUser(String type, String email, String fullname, String scfhsnumber,
    String phoneNumber, String workAdrres, String country, context) {
  String title = "MR";
  String prefix = "+46";

  final Map<String, dynamic> productData = {
    "type": "Student",
    "email": email,
    "title": title,
    "first_name": fullname,
    "second_name": "Tare",
    "last_name": "AFF",
    "scfhs_number": scfhsnumber,
    "prefix": "+46",
    "phone_number": phoneNumber,
    "address": workAdrres,
    "city": "cairo",
    "country": country,
    "subscribed": true
  };
  var url ="http://registration.medoc2019.co/submit_form_api";
  http.post(url, body: json.encode(productData)).then((response) {
    print("Response status: ${response.statusCode}");
    
    var mesag = json.decode(response.body);
    
    print(mesag['msg']);
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(mesag['msg']),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.orange,
    ));
  });
}
