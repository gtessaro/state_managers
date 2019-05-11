import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:state_managers/bloc/bloc.dart';

class BlocChart extends StatelessWidget {

  Map<String, double> dataMap = {
    "Flutter":4,
    "React":2,
    "Xamarim":2,
    "Ionic":2
  };

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Map<String,double>>(
      stream: BlocProvider.getBloc<AppBloc>().outData,
      initialData: dataMap,
      builder: (context, snapshot) {
        return PieChart(
          dataMap: snapshot.data,
          animationDuration: Duration(milliseconds: 800),
          showLegends: false,
          chartRadius: MediaQuery
              .of(context)
              .size
              .width /2,
          showChartValuesInPercentage: true,
          chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
        );
      }
    );
  }
}
