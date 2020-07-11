import 'package:flavorful_flutter/configurations/flavor_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final FlavorValues flavorValues = FlavorConfig.getValues();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'App Build Flavor',
            ),
            Text(
              flavorValues.flavor.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Backend Url',
            ),
            Text(
              flavorValues.backendUrl,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
