import 'package:flavorful_flutter/configurations/flavor_config.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlavorValues flavorValues = FlavorConfig.getValues();
    return MaterialApp(
      title: 'Flavorful Flutter',
      theme: ThemeData(
        primarySwatch: flavorValues.flavorColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(title: 'Home Screen'),
    );
  }
}