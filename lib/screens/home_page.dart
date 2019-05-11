import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_managers/model/model.dart';
import 'package:state_managers/model/model_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: <Widget>[
            Container(
              color: Colors.blue[200],
              child: ScopedModel<AppModel>(
                child: ModelScreen(),
                model: AppModel(),
              )
            ),
            Container(
                color: Colors.red[400]
            ),
            Container(
                color: Colors.green
            ),
          ],
        ),
      ),
    );
  }
}
