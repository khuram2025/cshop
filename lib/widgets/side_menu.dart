import 'package:flutter/material.dart';

import '../screens/DashboardScreen.dart';
import '../screens/Page1.dart';
import '../screens/TransactionsScreen.dart';  // Assuming Page1 is your dashboard, modify as necessary.

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(  // Wrap ListView with Material widget
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("johndoe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "JD",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardPage())),
          ),
          ListTile(
            leading: Icon(Icons.swap_horiz),
            title: Text('Transactions'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TransactionsPage())),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Products'),
            onTap: () {
              // Navigation for Products page
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Finances'),
            onTap: () {
              // Navigation for Finances page
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Users'),
            onTap: () {
              // Navigation for Users page
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              // Navigation for Login page
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigation for Settings page
            },
          ),
        ],
      ),
    );
  }
}
