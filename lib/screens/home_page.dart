import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_managers/bloc/bloc.dart';
import 'package:state_managers/bloc/bloc_screen.dart';
import 'package:state_managers/model/model.dart';
import 'package:state_managers/model/model_screen.dart';
import 'package:state_managers/provider/provider.dart';
import 'package:state_managers/provider/provider_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        blocs: [
          Bloc((i) => AppBloc()),
        ],
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
                color: Colors.red[400],
                child: BlocScreen(),
              ),
              Container(
                color: Colors.green,
                child: ChangeNotifierProvider(
                  child: ProviderScreen(),
                  builder: (context) => MySchedule(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
