import 'package:flutter/material.dart';

enum Flavor { DEV, QAT }

class FlavorConfig {
  static FlavorConfig _flavorConfig;
  static FlavorValues flavorValues;

  FlavorConfig._internalConstructor(
      Flavor flavor, String backendUrl, flavorColor) {
    flavorValues = FlavorValues(flavor, backendUrl, flavorColor);
  }

  static FlavorValues getValues() {
    return flavorValues;
  }

  static void setup(
      {@required Flavor flavor,
      @required String backendUrl,
      @required MaterialColor flavorColor}) {
    if (_flavorConfig == null) {
      _flavorConfig = FlavorConfig._internalConstructor(
          flavor,
          backendUrl,
          flavorColor);
    }
  }

//  static void setupQat() {
//    if (_flavorConfig == null) {
//      _flavorConfig = FlavorConfig._internalConstructor(
//        backendUrl: 'github.com',
//        flavorColor: Colors.amber,
//      );
//    }
//  }
}

class FlavorValues {
  const FlavorValues(this.flavor, this.backendUrl, this.flavorColor);

  final Flavor flavor;
  final String backendUrl;
  final MaterialColor flavorColor;
}
