import 'package:flutter/material.dart';
import 'screens/pizza_list_screen.dart';

void main() {
  runApp(const PizzaApp());
}

class PizzaApp extends StatelessWidget {
  const PizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizze',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PizzaListScreen(),
      routes: {
        '/': (context) => const PizzaListScreen(),
      },
    );
  }
}
