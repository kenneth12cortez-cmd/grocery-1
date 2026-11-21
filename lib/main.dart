import 'package:flutter/material.dart';
import 'pages/login_page.dart';

// This is where our app starts
void main() {
  runApp(const FreshlyApp());
}

class FreshlyApp extends StatelessWidget {
  const FreshlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Freshly',

      // Our app's basic theme
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF79CE8D),
        ),
      ),

      // The first page the user sees
      home: const LoginPage(),
    );
  }
}