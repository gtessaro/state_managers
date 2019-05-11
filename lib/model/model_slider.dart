import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_managers/model/model.dart';

class ModelSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (context,child,model) {
        return Slider(
          activeColor: Colors.black,
          inactiveColor: Colors.white,
          value: model.valor,
          onChanged: (value){
            model.increase(value);
          },
        );
      },
    );
  }
}
