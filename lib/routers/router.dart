

import 'package:flutter/material.dart';
import 'package:flutter_four/home_page.dart';
import 'package:flutter_four/routers/screens/my_a_page.dart';
import 'package:flutter_four/routers/screens/my_b_page.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;
  RouteGenerator._init();

  Route? ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (conte) => const MyHomePage());
      case 'GoAPage':
        return MaterialPageRoute(builder: (context) => const APageRouter());
      case 'GoBPage':
        return MaterialPageRoute(builder: (context) => const BPageRouter());
    }
    return null;
  }

  navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
