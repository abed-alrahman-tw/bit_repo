import 'package:bti_training2/assignments/assignment2/model/category.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        category.image,
        height: 60,
        width: 100,
        fit: BoxFit.fill,
      ),
    );
  }
}
