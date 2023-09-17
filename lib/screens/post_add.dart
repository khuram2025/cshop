import 'package:flutter/material.dart';

class PostAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Add")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Sell Your Product",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Title of the Product',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
                prefixText: '\$',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Text("Add photos of your product"),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {
                  // Add photo functionality
                },
              ),
            ),
            SizedBox(height: 20),
            Text("More Information"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Add Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            DottedDivider(),
            Text("Your Details"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Post Add button press
              },
              child: Text("Post Add Now"),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  // Handle Terms and Privacy Policy link press
                },
                child: Text(
                  "Terms and Privacy Policy",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DottedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: List.generate(
          100,
              (index) => Expanded(
            child: Container(
              height: 1,
              color: index.isEven ? Colors.transparent : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
