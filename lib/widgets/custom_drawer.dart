import 'package:flutter/material.dart';
import '../screens/product_list_page.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // To use the entire vertical space
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://via.placeholder.com/70'), // Placeholder image for profile
                  radius: 35,
                ),
                SizedBox(height: 10),
                Text('Profile Name', style: TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.list), // Icon for 'Item 1'
            title: Text('Item 1'),
            onTap: () {
              // Handle item click
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt), // Icon for 'Product List'
            title: Text('Product List'),
            onTap: () {
              // Navigate to the ProductList page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), // Icon for 'Settings'
            title: Text('Settings'),
            onTap: () {
              // Navigate to the Settings page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListPage()),
              );
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle login click
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
