import 'package:flavorful_flutter/configurations/flavor_config.dart';
import 'package:flutter/material.dart';

import 'application.dart';

void main() {
  FlavorConfig.setup(flavor: Flavor.DEV, backendUrl: 'github.com', flavorColor: Colors.indigo);
  runApp(MyApp());
}
