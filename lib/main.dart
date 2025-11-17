import 'package:apk_fawa/pages/home_page.dart';
import 'package:apk_fawa/pages/login_page.dart';
import 'package:apk_fawa/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';

void main() {
  runApp(const FawaApp());
}

class FawaApp extends StatelessWidget {
  const FawaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fawa Kantin',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const LoginPage(),
      routes: {
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
