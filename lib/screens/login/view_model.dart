import 'package:flutter/material.dart';

import '../../actions/auth_action.dart';
import '../../models/auth_state.dart';

class ViewModel {
  final String accesstoken;

  final Function(String username, String password) login;

  ViewModel({@required this.accesstoken, @required this.login});

  static ViewModel fromStore(store) {
    AuthState authState = store.state.authState;

    return ViewModel(
      login: (username, password) {
        return store.dispatch(SignInAction(store, username, password));
      },
      accesstoken: authState.accessToken == null ? '' : authState.accessToken,
    );
  }
}
