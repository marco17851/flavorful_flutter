import 'package:flavorful_flutter/configurations/flavor_config.dart';
import 'package:flutter/material.dart';

import 'application.dart';

void main() {
  FlavorConfig.setup(flavor: Flavor.UAT, backendUrl: 'uat.my-cool-bff.com', flavorColor: Colors.grey);
  runApp(MyApp());
}
