import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ProviderChart extends StatelessWidget {

  Map<String, double> dataMap = {
    "red":4,
    "blue":2,
    "green":2,
    "yellow":2
  };

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
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
}
