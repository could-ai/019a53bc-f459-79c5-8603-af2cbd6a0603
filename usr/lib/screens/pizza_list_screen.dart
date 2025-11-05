import 'package:flutter/material.dart';
import '../models/pizza.dart';
import '../widgets/pizza_card.dart';

class PizzaListScreen extends StatelessWidget {
  const PizzaListScreen({super.key});

  final List<Pizza> pizzas = const [
    Pizza(
      id: 1,
      name: 'Margherita',
      description: 'Tomato, mozzarella, basil',
      price: 8.5,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Pizza(
      id: 2,
      name: 'Pepperoni',
      description: 'Tomato, mozzarella, pepperoni',
      price: 9.5,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Pizza(
      id: 3,
      name: 'Vegetarian',
      description: 'Tomato, mozzarella, veggies',
      price: 10.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizze'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          return PizzaCard(pizza: pizzas[index]);
        },
      ),
    );
  }
}
