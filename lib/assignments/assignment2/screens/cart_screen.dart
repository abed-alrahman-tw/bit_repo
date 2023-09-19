import 'package:bti_training2/assignments/assignment2/data/data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, i) {
            return cart.map((e) => Text(e.name)).toList(growable: false)[i];
          }),
    );
  }
}
