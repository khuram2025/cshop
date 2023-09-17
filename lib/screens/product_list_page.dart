// product_list_page.dart
import 'package:flutter/material.dart';

import '../widgets/product_list.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ProductList(),  // Assuming this is your ProductList widget
    );
  }
}
