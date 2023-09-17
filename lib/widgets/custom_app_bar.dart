// custom_app_bar.dart

import 'package:flutter/material.dart';

import '../screens/post_add.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Center(child: Text('Channab')),
      actions: [
        GestureDetector(
          onTap: () {
            // Navigate to PostAddPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PostAddPage()),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5), // To adjust height from top and bottom
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Post ADD',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Handle notification click
          },
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/user_pic.png'),
          radius: 20,
        ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

