import 'package:carrot/screens/main_screens.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CattotMarket());
}

class CattotMarket extends StatelessWidget {
  const CattotMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrot_Market',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}
