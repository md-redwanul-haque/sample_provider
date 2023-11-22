import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

  int count =0;

  void increment(){
    count++;
    notifyListeners();
  }




}