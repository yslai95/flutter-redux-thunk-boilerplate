import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../actions/auth_action.dart';
import '../helpers/web_client.dart';
import '../models/app_state.dart';
import '../main.dart';

ThunkAction<AppState> loginThunk(String username, String password) =>
    (Store<AppState> store) async {
      // List<dynamic> result = await WebClient().get(
      //     "http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1");

      store.dispatch(SignInSuccessAction(username, 'refreshtoken'));
    };
