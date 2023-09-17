import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productTitle;
  final String productDescription;
  final String productLocation;

  ProductDetailPage({
    required this.productTitle,
    required this.productDescription,
    required this.productLocation,
    // ... You can add other fields if needed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: ListView(
        children: <Widget>[
          // Image slider
          Container(
            height: MediaQuery.of(context).size.height / 4,
            child: Image.network(
              "https://via.placeholder.com/400x150", // Placeholder image
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),

          // Product title and share icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productTitle,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Handle share action
                },
              ),
            ],
          ),
          SizedBox(height: 10),

          // Product price
          Text(
            "\$100", // Placeholder price, replace with actual data
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 10),

          // Product specifications table (placeholder)
          DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Specification')),
              DataColumn(label: Text('Value')),
            ],
            rows: const <DataRow>[
              DataRow(cells: [DataCell(Text('Color')), DataCell(Text('Red'))]),
              DataRow(cells: [DataCell(Text('Size')), DataCell(Text('Medium'))]),
              // Add more rows for specifications
            ],
          ),
          SizedBox(height: 10),

          // Product description
          Text(productDescription),
          SizedBox(height: 10),

          // Location details
          Text('Location: $productLocation'),
          SizedBox(height: 10),

          // Placeholder for GPS location box
          Container(
            height: 150,
            color: Colors.grey[300],
            child: Center(child: Text('GPS Location Box')),
          ),
          SizedBox(height: 10),

          // Seller info
          ListTile(
            leading: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), // Rounded radius of 5
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://via.placeholder.com/70'), // Placeholder image
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Seller Name', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Member Since: 1 Year 5 Months', style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text('Location: New York', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            subtitle: Row(
              children: [
                Expanded(child: Text('Posts: 24', style: TextStyle(fontSize: 12))),
                Text('Rating: ⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          SizedBox(height: 10),


          // Comments and reviews section
          Text('Comments and Reviews:'),
          SizedBox(height: 10),
          // You might want to generate a list of review widgets here
          // For now, I'll just add a placeholder
          ListTile(
            title: Text('User 1'),
            subtitle: Text('This is a great product!'),
          ),
          ListTile(
            title: Text('User 2'),
            subtitle: Text('Works as described.'),
          ),
          // ... Add more reviews as needed

          // Submit a review
          ElevatedButton(
            onPressed: () {
              // Handle review submission
            },
            child: Text('Submit a Review'),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
