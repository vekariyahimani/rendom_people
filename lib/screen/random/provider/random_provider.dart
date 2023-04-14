import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rendom_people/screen/random/modal/random_modal.dart';
import 'package:rendom_people/utils/api_helper.dart';

class RandomProvider extends ChangeNotifier
{
  People? people;
  ApiHelper api=ApiHelper();

  Future<People?> getData()
  async {
     people=await api.randomApiCall();
    notifyListeners();
  }
    int index=0;
  int i=0;
  void change(int Index)
  {
    i=index;
    notifyListeners();

  }


}