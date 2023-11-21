import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier{
  int num = 0;

  void increaseNum(){
    num++;
    notifyListeners();
  }
}