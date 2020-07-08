import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/detail/detail.dart';
import 'package:onlineshop/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => HomeScreen(),
        'detail': (context) => DetailScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
