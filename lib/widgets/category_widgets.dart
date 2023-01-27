import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({required this.category_model});

  final Category_model category_model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: category_model.color,
      ),
      child: Center(
        child: Text(
          category_model.name,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
