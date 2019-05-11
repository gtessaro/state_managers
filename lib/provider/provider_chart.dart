import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:state_managers/provider/provider.dart';

class ProviderChart extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder:(context,schedule, _) => PieChart(
        dataMap: createData(schedule.stateManagementTime*10),
        animationDuration: Duration(milliseconds: 800),
        showLegends: false,
        chartRadius: MediaQuery
            .of(context)
            .size
            .width /2,
        showChartValuesInPercentage: true,
        chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
      ),
    );
  }

  Map<String, double> createData(double value){
    return {
      "red":value,
      "blue":2,
      "green":2,
      "yellow":2
    };
  }
}
