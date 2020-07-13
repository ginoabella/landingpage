import 'package:flutter/material.dart';
import 'package:links_landing_page/landing_page.dart';
import 'package:links_landing_page/not_found_page.dart';
import 'package:links_landing_page/settings/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Links Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Material(child: LandingPage()),
      initialRoute: '/settings',
      routes: {
        '/': (context) => Material(child: LandingPage()),
        '/settings': (context) => Material(child: SettingsPage()),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Material(child: NotFoundPage(settings.name)),
      ),
    );
  }
}
