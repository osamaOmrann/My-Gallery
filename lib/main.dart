import 'package:flutter/material.dart';
import 'package:my_gallery/home_screen/home_screen.dart';

import 'login_screen/login_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LogInScreen.routeName: (_) => LogInScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: LogInScreen.routeName,
    );
  }
}
