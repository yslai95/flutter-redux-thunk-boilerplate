import 'package:redux/redux.dart';

import '../thunks/auth_thunk.dart';

class SignInAction {
  SignInAction(Store<dynamic> store, username, password) {
    store.dispatch(loginThunk(username, password));
  }
}

class SignInSuccessAction {
  final String accessToken;
  final String refreshToken;

  SignInSuccessAction(this.accessToken, this.refreshToken);
}
