import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc implements BlocBase{

  Map<String, double> dataMap = {
    "red":4,
    "blue":2,
    "green":2,
    "yellow":2
  };

  final _controller = BehaviorSubject<Map<String, double>>();
  final _sliderController = BehaviorSubject<double>();

  Stream<Map<String, double>> get outData => _controller.stream;
  Stream<double> get outDouble => _sliderController.stream;

  void increase(double valor){
    dataMap["red"] = valor*10;
    _controller.sink.add(dataMap);
    _sliderController.sink.add(valor);
  }

  @override
  void dispose() {
    _sliderController.close();
    _controller.close();
  }
}