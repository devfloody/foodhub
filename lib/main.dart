import 'package:flutter/material.dart';
import 'package:foodhub/config/theme.dart';

import 'screens/screens.dart';

void main() => runApp(FoodHub());

class FoodHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Hub App',
      debugShowCheckedModeBanner: false,
      theme: customTheme(),
      home: HomeScreen(),
    );
  }
}
