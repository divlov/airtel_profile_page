import 'package:airtel_profile_page_flutter/screens/Login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.blueGrey[50],
        appBarTheme: AppBarTheme(color: Colors.blueGrey[50])
      ),
      home: LoginPage(),
    );
  }
}
