import 'package:flutter/material.dart';
import '../widgets/layout.dart';
import '../widgets/side_menu.dart';

class AnimalDetailPage extends StatefulWidget {
  final Map<String, dynamic> animal;

  AnimalDetailPage({required this.animal});

  @override
  _AnimalDetailPageState createState() => _AnimalDetailPageState();
}

class _AnimalDetailPageState extends State<AnimalDetailPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktopOrTablet = screenWidth > 600;

    Widget _buildTab(String text) {
      final int tabIndex = _tabController.index;
      final bool isActive = tabIndex == (['Info', 'Health', 'Family', 'Milk', 'Weight'].indexOf(text));

      return Tab(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: isDesktopOrTablet ? 10 : 1.5),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : null,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: isActive ? Theme.of(context).primaryColor : Colors.white),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: isDesktopOrTablet ? 20 : 16,
              color: isActive ? Colors.black : null,
            ),
          ),
        ),
      );
    }

    return ResponsiveLayout(
      sideMenu: SideMenu(),
      mainColumn: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.animal['imagePath'],
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text('Tag: ${widget.animal['title']}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              color: Theme.of(context).primaryColor,
              child: Builder(
                builder: (BuildContext context) => TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    _buildTab('Info'),
                    _buildTab('Health'),
                    _buildTab('Family'),
                    _buildTab('Milk'),
                    _buildTab('Weight'),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(child: Text('Info Content')),
                  Center(child: Text('Health Content')),
                  Center(child: Text('Family Content')),
                  Center(child: Text('Milk Content')),
                  Center(child: Text('Weight Content')),
                ],
              ),
            ),
          ],
        ),
      ),
      rightColumn: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Related Information', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          // Add other related widgets or information here
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
