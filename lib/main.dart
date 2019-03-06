import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './configs/app_config.dart';
import './models/app_state.dart';
import './routes/navigator.dart';
import './routes/routes.dart';
import 'generated/i18n.dart';

class App extends StatelessWidget {
  final Store<AppState> store;

  App(this.store);

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: config.appName,
        routes: routes,
        navigatorKey: navigator,
        localizationsDelegates: [S.delegate],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback:
            S.delegate.resolution(fallback: new Locale("en", "")),
      ),
    );
  }
}
