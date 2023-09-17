import 'package:flutter/material.dart';

import '../screens/Page1.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(title: Text('Page 1'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()))),
        // ... Add ListTiles for Page2, Page3, Page4, and Page5.
      ],
    );
  }
}
