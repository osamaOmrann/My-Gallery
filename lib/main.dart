import 'package:flutter/material.dart';

import 'login_screen/login_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LogInScreen.routeName: (_) => LogInScreen(),
      },
      initialRoute: LogInScreen.routeName,
    );
  }
}
