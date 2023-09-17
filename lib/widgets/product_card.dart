// product_card.dart

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice; // Consider renaming this to location or productLocation if it represents the product's location
  final String imageUrl;
  final String addedTime;

  ProductCard({
    required this.productName,
    required this.productPrice, // Rename this if it represents the product's location
    required this.imageUrl,
    this.addedTime = '15 hours ago',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 130,
            height: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(productPrice), // Consider renaming if it represents the location
                  Text(
                    'Added: $addedTime',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.sms),
                        onPressed: () {
                          // Handle SMS action
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () {
                          // Handle Call action
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.message),
                        onPressed: () {
                          // Handle WhatsApp action
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
