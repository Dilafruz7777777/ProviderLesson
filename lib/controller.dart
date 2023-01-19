import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  int count = 0;

  int currentIndex = 0;

  setIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

  addCount(){
    count++;
    notifyListeners();
  }
}

