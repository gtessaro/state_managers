import 'package:flutter/material.dart';
import 'package:state_managers/model/model_chart.dart';
import 'package:state_managers/model/model_slider.dart';

class ModelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "State Management with ScopedModel",
            style: TextStyle(
              fontSize: 16
            ),
          ),
          ModelChart(),
          SizedBox(height: 25,),
          ModelSlider()
        ],
      ),
    );
  }
}
