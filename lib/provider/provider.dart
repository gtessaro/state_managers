import 'package:flutter/foundation.dart';

class MySchedule with ChangeNotifier{
  double _stateManagementTime = 0.4;

  double get stateManagementTime => _stateManagementTime;

  set stateManagementTime(double value){
    _stateManagementTime = value;
    _statManagementData["red"]=value*10;
    notifyListeners();
  }

  Map<String,double> _statManagementData = {
    "red":4,
    "blue":2,
    "green":2,
    "yellow":2
  };

  Map<String,double> get statManagementData => _statManagementData;

}