import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../models/app_state.dart';

final persistor = new Persistor<AppState>(
  storage: new FlutterStorage(),
  serializer: JsonSerializer<AppState>(AppState.fromJson),
);

// Set up middlewares
List<Middleware<AppState>> createMiddleware() => <Middleware<AppState>>[
      thunkMiddleware,
      persistor.createMiddleware(),
      new LoggingMiddleware.printer(),
    ];
