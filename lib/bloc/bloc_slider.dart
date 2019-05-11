import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:state_managers/bloc/bloc.dart';

class BlocSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream: BlocProvider.of<AppBloc>(context).outDouble,
        initialData: 0.4,
        builder: (context, snapshot) {
          return Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.white,
            value: snapshot.data,
            onChanged: (value){
              BlocProvider.of<AppBloc>(context).increase(value);
            },
          );
        }
    );
  }
}