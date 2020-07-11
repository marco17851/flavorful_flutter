import 'package:flavorful_flutter/configurations/flavor_config.dart';
import 'package:flutter/material.dart';

import 'application.dart';

void main() {
  FlavorConfig.setup(flavor: Flavor.QAT, backendUrl: 'qat.my-cool-bff.com', flavorColor: Colors.pink);
  runApp(MyApp());
}
