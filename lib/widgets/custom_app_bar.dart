// custom_app_bar.dart

import 'package:flutter/material.dart';

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
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Handle notification click
          },
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/user_pic.png'), // Placeholder image, replace with your own asset
          radius: 20,
        ),
        SizedBox(width: 10), // Spacing after profile pic
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
