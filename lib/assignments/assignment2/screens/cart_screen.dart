import 'package:bti_training2/assignments/assignment2/data/data.dart';
import 'package:bti_training2/assignments/assignment2/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        centerTitle: true,
        title: const Text("Cart"),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, i) {
            return cart.map((e) => CartItem(product: e)).toList(growable: false)[i];
          }),
    );
  }
}
