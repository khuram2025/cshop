import 'package:flutter/material.dart';

import '../screens/product_detail.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetailPage(
            productTitle: 'Product Title',
            productLocation: 'Product Location',
            productDescription: 'This is the description of the product.',
            // ... Other product details ...
          ),
        ));
      },
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width > 700 ? 700 : MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.black12,
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://via.placeholder.com/130x100"), // Example network image
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // To ensure space between rows
                  children: [
                    Row(
                      children: [
                        Icon(Icons.verified, size: 16, color: Colors.green), // Verified icon
                        SizedBox(width: 5),
                        Text(
                          'Product Title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: Colors.grey), // Location icon
                        SizedBox(width: 5),
                        Text('Product Location'),
                      ],
                    ),
                    Text(
                      'Added: 15 hours ago',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,  // To distribute space between icons
                      children: [
                        _iconWithText(Icons.message, 'SMS', Colors.grey),
                        _iconWithText(Icons.call, 'Phone', Colors.green),
                        _iconWithText(Icons.message, 'WhatsApp', Colors.blue),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconWithText(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(width: 5),
          Text(label, style: TextStyle(fontSize: 12, color: color)),
        ],
      ),
    );
  }
}
