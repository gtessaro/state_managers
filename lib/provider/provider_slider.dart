import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managers/provider/provider.dart';

class ProviderSlider extends StatefulWidget {
  @override
  _ProviderSliderState createState() => _ProviderSliderState();
}

class _ProviderSliderState extends State<ProviderSlider> {
  double _value = 0.4;

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);

    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.white,
      value: schedule.stateManagementTime,
      onChanged: (value){
        schedule.stateManagementTime = value;
      },
    );
  }
}
