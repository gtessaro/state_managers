import 'package:flutter/foundation.dart';

class MySchedule with ChangeNotifier{
  double _stateManagementTime = 0.4;

  double get stateManagementTime => _stateManagementTime;

  set stateManagementTime(double value){
    _stateManagementTime = value;
    notifyListeners();
  }

}