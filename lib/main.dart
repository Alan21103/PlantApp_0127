import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColor, // atur warna AppBar di sini
          foregroundColor: Colors.white, // warna teks/icon di AppBar
          elevation: 0, // opsional, untuk tampilan flat
        ),
      ),
      home: HomeScreen(),
    );
  }
}
