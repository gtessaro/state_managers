import 'package:flutter/material.dart';
import 'package:state_managers/bloc/bloc_chart.dart';
import 'package:state_managers/bloc/bloc_slider.dart';

class BlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "State Management with BLOC",
            style: TextStyle(
                fontSize: 16
            ),
          ),
          BlocChart(),
          SizedBox(height: 25,),
          BlocSlider()
        ],
      ),
    );
  }
}
