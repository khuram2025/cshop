import 'package:flutter/material.dart';

import '../widgets/product_list.dart';

class CategoryProductListPage extends StatelessWidget {
  final String categoryName;

  CategoryProductListPage({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ProductList(), // Display the list of products for the selected category
    );
  }
}
