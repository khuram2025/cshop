import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Detail'),
            Tab(text: 'My Listings'),
            Tab(text: 'Chat/Messages'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDetailTab(),
          // TODO: Implement My Listings and Chat/Messages tabs
          Center(child: Text('My Listings')),
          Center(child: Text('Chat/Messages')),
        ],
      ),
    );
  }

  Widget _buildDetailTab() {
    return ListView(
        children: [
        Image.network('https://via.placeholder.com/400x150', height: 150, fit: BoxFit.cover), // Cover Image
