import 'package:flutter/material.dart';

import '../widgets/layout.dart';
import '../widgets/side_menu.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      sideMenu: SideMenu(),
      mainColumn: Center(child: Text('Dashboard')),
      rightColumn: Center(child: Text('Right Column for Dashboard')),
    );
  }
}