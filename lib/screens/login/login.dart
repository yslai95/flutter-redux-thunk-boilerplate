import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../models/app_state.dart';
import '../../models/auth_state.dart';
import 'view_model.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String _username;
  String _password;

  // if authenticated, skip this page and move to profile page

  void _submit(ViewModel viewModel) {
    _formKey.currentState.save();
    viewModel.login(_username, _password);
  }

  void _changeLanguage() {
    print('trigger language');
    // App.setLocale(context, newLocale)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StoreConnector<AppState, ViewModel>(
          converter: (store) => ViewModel.fromStore(store),
          builder: (_, viewModel) => Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onSaved: (val) => _username = val,
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      obscureText: true,
                      onSaved: (val) => _password = val,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        _submit(viewModel);
                      },
                      textColor: Colors.black,
                      child: Text("Login"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        print('access tokem');
                        print(viewModel.accesstoken);
                      },
                    ),
                    Text(viewModel.accesstoken)
                  ],
                ),
              )),
    );
  }
}
