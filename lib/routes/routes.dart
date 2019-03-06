import 'package:flutter/material.dart';

import '../screens/login/login.dart';
import '../screens//home/home.dart';

final routes = {
  '/login': (BuildContext context) => LoginScreen(),
  '/home': (BuildContext context) => HomeScreen(),
  '/': (BuildContext context) => LoginScreen(),
};
