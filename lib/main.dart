import 'package:bastketball_pointscounter/Screens/PointsCounterScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => Model(), child:
      MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PointsCounterScreen(),
  )));
}

