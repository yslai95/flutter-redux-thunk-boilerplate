import 'package:redux/redux.dart';

import '../middlewares/middleware.dart';
import '../models/app_state.dart';
import '../reducers/app_reducer.dart';

Future<Store<AppState>> createStore() async {
  final initialState = await persistor.load();

  return new Store(
    appReducer,
    initialState: initialState ?? AppState.initial(),
    middleware: createMiddleware(),
  );
}
