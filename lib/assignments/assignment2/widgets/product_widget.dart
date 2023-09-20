import 'package:bti_training2/assignments/assignment2/data/data.dart';
import 'package:bti_training2/assignments/assignment2/model/product.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product, required this.func});
  final Product product;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        const BoxShadow(color: Colors.grey),
        BoxShadow(
          color: Colors.grey.shade200,
          offset: const Offset(1, 0),
          blurRadius: 6,
        )
      ]),
      width: MediaQuery.sizeOf(context).width / 2,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.network(
              product.image,
              height: 150,
              width: MediaQuery.sizeOf(context).width / 2,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Spacer(),
                    Text(
                      "${product.price} KD",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.description,
                  style: const TextStyle(fontSize: 15),
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((states) => Colors.red.shade700),
                        minimumSize: MaterialStateProperty.resolveWith<Size>(
                            (states) => Size(MediaQuery.sizeOf(context).width / 2 - 10, 35))),
                    onPressed: () {
                      cart.add(product);
                      int categoryIndex = categories.indexWhere((element) => element.id == product.categoryId);
                      int productIndex =
                          categories[categoryIndex].products.indexWhere((element) => element.id == product.id);
                      categories[categoryIndex].products.removeAt(productIndex);
                      func();
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    label: const Text("Add to Cart")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
