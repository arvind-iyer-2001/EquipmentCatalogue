import 'package:equipmentCatalogue/Screens/itemDetailScreen.dart';

import './Screens/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => MainScreen(),
        ItemDetail.routeName: (ctx) => ItemDetail()
      },
    );
  }
}
