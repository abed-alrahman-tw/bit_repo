import '../../model/product.dart';
import 'package:flutter/material.dart';

import '../../widgets/product_widget.dart';

class ProductsFragment extends StatelessWidget {
  const ProductsFragment({super.key, required this.products, required this.function});

  final List<Product> products;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: products
            .map((e) => ProductWidget(
                  product: e,
                  func: function,
                ))
            .toList(growable: false),
      ),
    );
  }
}
