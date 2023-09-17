import 'package:flutter/material.dart';

import '../widgets/layout.dart';
import '../widgets/side_menu.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      sideMenu: SideMenu(),
      mainColumn: Center(child: Text('Page 1')),
      rightColumn: Center(child: Text('Right Column')),
    );
  }
}

// ... Repeat similar code for Page2, Page3, Page4, and Page5.
