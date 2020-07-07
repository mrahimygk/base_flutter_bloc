import 'package:flutter/material.dart';
import 'package:himart_customer/pages/login_page.dart';
import 'package:himart_customer/pages/main_page.dart';
import 'package:himart_customer/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'هایمارت',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext inContext) => SplashPage(),
        '/main': (BuildContext inContext) => MainPage(),
        '/login': (BuildContext inContext) => LoginPage(),
      },
    );
  }
}
