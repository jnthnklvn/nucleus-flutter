import 'package:flutter/material.dart';
import 'package:nucleus_ui_app/app/app_theme.dart';
import 'package:nucleus_ui_app/config/config.dart';
import 'package:nucleus_ui_app/config/strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navKey,
      initialRoute: initialRoutes,
      routes: routes,
    );
  }
}
