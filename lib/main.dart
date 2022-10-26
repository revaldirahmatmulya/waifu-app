import 'package:flutter/material.dart';
import './pages/detail.dart';
import './pages/dahsboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Detail Waifu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/dashboard',
        routes: {
          '/dashboard': (context) => DashboardPage(),
          '/detail': (context) => const DetailPage()
        });
  }
}
