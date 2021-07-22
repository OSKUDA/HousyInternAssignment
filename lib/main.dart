import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/dashboard_screen.dart';
import 'package:housy_intern_app/utils/constants.dart';

void main() {
  // set navigation button bar color
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: kPrimaryColor, // set navigation bar color
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // uses static navigation
    return MaterialApp(
      initialRoute: DashboardScreen.id,
      routes: {
        DashboardScreen.id: (context) => DashboardScreen(),
      },
    );
  }
}
