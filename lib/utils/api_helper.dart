import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rendom_people/screen/random/modal/random_modal.dart';

class ApiHelper
{

  Future<People> randomApiCall()
  async {
    String link="https://randomuser.me/api/";
    Uri uri=Uri.parse(link);
    var response=await http.get(uri);
    var json=jsonDecode(response.body);
    People people=People.fromJson(json);
    return people;



  }
}
