import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget sideMenu;
  final Widget mainColumn;
  final Widget rightColumn;

  ResponsiveLayout({required this.sideMenu, required this.mainColumn, required this.rightColumn});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _MobileLayout(sideMenu: sideMenu, mainColumn: mainColumn),
      tablet: _TabletLayout(sideMenu: sideMenu, mainColumn: mainColumn, rightColumn: rightColumn),
      desktop: _DesktopLayout(sideMenu: sideMenu, mainColumn: mainColumn, rightColumn: rightColumn),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  final Widget sideMenu;
  final Widget mainColumn;

  _MobileLayout({required this.sideMenu, required this.mainColumn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Project')),
      drawer: Drawer(child: sideMenu),
      body: mainColumn,
    );
  }
}

class _TabletLayout extends StatelessWidget {
  final Widget sideMenu;
  final Widget mainColumn;
  final Widget rightColumn;

  _TabletLayout({required this.sideMenu, required this.mainColumn, required this.rightColumn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Project')),
      drawer: Drawer(child: sideMenu),
      body: Row(
        children: [Expanded(child: mainColumn), Expanded(child: rightColumn)],
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  final Widget sideMenu;
  final Widget mainColumn;
  final Widget rightColumn;

  _DesktopLayout({required this.sideMenu, required this.mainColumn, required this.rightColumn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Project')),
      body: Row(
        children: [
          Expanded(child: sideMenu),
          Expanded(child: mainColumn),
          Expanded(child: rightColumn)
        ],
      ),
    );
  }
}

