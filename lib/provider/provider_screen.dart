import 'package:flutter/material.dart';
import 'package:state_managers/provider/provider_chart.dart';
import 'package:state_managers/provider/provider_slider.dart';

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "State Management with Provider",
            style: TextStyle(
                fontSize: 16
            ),
          ),
          ProviderChart(),
          SizedBox(height: 25,),
          ProviderSlider()
        ],
      ),
    );
  }
}
