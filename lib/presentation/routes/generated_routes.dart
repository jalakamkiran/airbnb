import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ui/bussiness_logic/stay_type/stay_type_bloc.dart';
import 'package:flutter_airbnb_ui/presentation/screens/home_page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    StayTypeBloc stayTypeBloc = StayTypeBloc();
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return BlocProvider<StayTypeBloc>.value(
            value: stayTypeBloc,
            child: HomePage(),
          );
        });
      default:
        return _errorRoute();
    }
  }

  _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Column(
          children: [Text("This ios a error route")],
        ),
      );
    });
  }
}
