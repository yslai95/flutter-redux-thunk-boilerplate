import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './configs/app_config.dart';
import 'main.dart';
import 'store/store.dart';

void main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  var store = await createStore();

  var configuredApp = new AppConfig(
    appName: 'DEV',
    apiBaseUrl: 'https://dev-api.com/',
    child: new App(store),
  );

  print('App runs in DEVELOPMENT mode');
  runApp(configuredApp);
}
