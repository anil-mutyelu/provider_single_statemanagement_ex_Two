import 'package:flutter/cupertino.dart';

class indatc with ChangeNotifier
{
  int _num = 0;

  int get countdata => _num;

  void setCount()
  {
    _num++;
    notifyListeners();
  }

}