import 'package:cstore/widgets/custom_app_bar.dart';
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
      mobile: _MobileTabletLayout(sideMenu: sideMenu, mainColumn: mainColumn),
      tablet: _MobileTabletLayout(sideMenu: sideMenu, mainColumn: mainColumn, rightColumn: rightColumn),
      desktop: _DesktopLayout(sideMenu: sideMenu, mainColumn: mainColumn, rightColumn: rightColumn),
    );
  }
}

class _MobileTabletLayout extends StatelessWidget {
  final Widget sideMenu;
  final Widget mainColumn;
  final Widget? rightColumn;

  _MobileTabletLayout({required this.sideMenu, required this.mainColumn, this.rightColumn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(child: sideMenu),
      body: rightColumn == null ?
      mainColumn :
      Row(
        children: [
          Expanded(
            flex: 3,  // 3/5 of space for mainColumn
            child: Container(color: Colors.lightBlue, child: mainColumn),
          ),
          Expanded(
            flex: 1,  // 2/5 of space for rightColumn
            child: Container(color: Colors.lightGreen, child: rightColumn!),
          ),
        ],
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
    return Row(
      children: [
        Expanded(
          flex: 1,  // 1/6 of space for sideMenu
          child: Container(color: Colors.grey[300], child: sideMenu),
        ),
        Expanded(
          flex: 5,  // 5/6 of space for mainColumn and rightColumn
          child: Scaffold(
            appBar: CustomAppBar(),
            body: Row(
              children: [
                Expanded(
                  flex: 4,  // 4/5 of space for mainColumn
                  child: Container( child: mainColumn),
                ),
                Expanded(
                  flex: 1,  // 1/5 of space for rightColumn
                  child: Container(color: Colors.lightGreen, child: rightColumn),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
