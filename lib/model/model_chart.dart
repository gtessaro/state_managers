import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_managers/model/model.dart';

class ModelChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (BuildContext context, Widget child, AppModel model) {
        return PieChart(
          dataMap: model.dataMap,
          animationDuration: Duration(milliseconds: 800),
          showLegends: false,
          chartRadius: MediaQuery
              .of(context)
              .size
              .width /2,
          showChartValuesInPercentage: true,
          chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
        );
      },
    );
  }
}
