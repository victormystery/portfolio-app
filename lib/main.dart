
import 'package:firebase_core/firebase_core.dart';
import 'package:portfolio_app/portfolio.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(),
    );
  }
}

