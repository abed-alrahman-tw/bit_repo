import 'package:bti_training2/assignments/assignment2/model/product.dart';

class Category {
  final int id;
  final String name;
  final String image;
  final List<Product> products;

  Category({required this.id, required this.name, required this.image, required this.products});
}
