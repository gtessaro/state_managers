import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managers/provider/provider.dart';

class ProviderSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);

    return Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.white,
      value: schedule.stateManagementTime,
      onChanged: (value) => schedule.stateManagementTime = value,
    );
  }
}

