import 'package:scoped_model/scoped_model.dart';



class AppModel extends Model{
  Map<String, double> dataMap = {
    "red":4,
    "blue":2,
    "green":2,
    "yellow":2
  };

  double valor = 0.4;

  void increase(double value){
    dataMap["red"] = value*10;
    valor = value;
    notifyListeners();
  }
}