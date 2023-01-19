import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  int count = 0;
  String name = "";
  int currentIndex = 0;

  int CountChange = 0;

  setName(String name1){
    name = name1;
    notifyListeners();
  }

  setIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

  addCountChange(){
    CountChange++;
    notifyListeners();
  }

  addCount(){
    count++;
    notifyListeners();
  }
}

