import 'package:flutter/material.dart';
import './route_config.dart';

class App extends StatelessWidget {
  Widget root() {
    final routeConfig = RouteConfig();
    return MaterialApp(
      title: 'IB',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeConfig.routes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return root();
  }
}
