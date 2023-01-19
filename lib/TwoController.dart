import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoController extends ChangeNotifier{
  int count = 0;

  addCount(){
    count++;
    notifyListeners();
  }
}