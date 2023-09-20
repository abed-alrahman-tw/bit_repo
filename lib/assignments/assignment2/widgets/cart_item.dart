import 'package:bti_training2/assignments/assignment2/model/product.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(product.image),
        title: Text(product.name),
        subtitle: Text(product.price.toString()),
        style: ListTileStyle.list,
        tileColor: Colors.red.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
