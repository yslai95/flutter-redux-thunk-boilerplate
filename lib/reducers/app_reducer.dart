import '../models/app_state.dart';
import 'auth_reducer.dart';

AppState appReducer(AppState state, dynamic action) =>
    new AppState(authState: reducer(state.authState, action));
