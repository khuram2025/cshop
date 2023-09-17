import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/category_widget.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          CategoryWidget(),
          SizedBox(height: 10.0),
          ...List.generate(5, (index) => ProductCardBuilder()),
        ],
      ),
    );
  }
}

class ProductCardBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductCard(),
        SizedBox(height: 10.0),
      ],
    );
  }
}




