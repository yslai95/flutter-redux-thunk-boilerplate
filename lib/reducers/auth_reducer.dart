import 'package:redux/redux.dart';

import '../actions/auth_action.dart';
import '../models/auth_state.dart';
import '../routes/navigator.dart';

final reducer = combineReducers<AuthState>([
  TypedReducer<AuthState, SignInAction>(_signInAction),
  TypedReducer<AuthState, SignInSuccessAction>(_signInSuccessAction),
]);

AuthState _signInAction(state, SignInAction action) {
  return state;
}

AuthState _signInSuccessAction(AuthState state, SignInSuccessAction action) {
  // navigator.currentState.pushNamed('/home');
  final accessToken = action.accessToken;
  final refreshToken = action.refreshToken;
  return state.copyWith(accessToken: accessToken, refreshToken: refreshToken);
}
