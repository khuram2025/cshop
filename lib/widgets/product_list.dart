import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Product List',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible( // Add this
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return ProductCard(
                productName: 'Product $index',
                productPrice: '\$100',
                imageUrl: 'https://via.placeholder.com/150', // Placeholder image URL

                addedTime: '15 hours ago', // Example added time
              );
            },
          ),
        ),
      ],
    );
  }
}
