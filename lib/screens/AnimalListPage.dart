import 'package:cstore/screens/AnimalDetailPage.dart';
import 'package:cstore/widgets/animal_list_card.dart';
import 'package:flutter/material.dart';

import '../widgets/layout.dart'; // Importing the ResponsiveLayout
import '../widgets/side_menu.dart'; // Importing the SideMenu

class AnimalListPage extends StatelessWidget {
  final List<Map<String, dynamic>> animals = [
    {
      'title': 'Lion',
      'weight': '650 KG',
      'age': '10 years',
      'status': ['Male', 'Category', 'Milking-Prag'],
      'imagePath': 'path_to_lion_image',
    },
    // Add more animals as needed
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktopOrTablet = screenWidth > 600;

    return ResponsiveLayout(
      sideMenu: SideMenu(),
      mainColumn: Container(
        margin: isDesktopOrTablet ? EdgeInsets.all(10) : null,
        child: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            final animal = animals[index];
            return AnimalListCard(
              animal: animal,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnimalDetailPage(animal: animal), // Pass the animal data to detail page
                  ),
                );
              },
            );
          },
        ),
      ),
      rightColumn: Center(child: Text('Right Column for Animal List')),
    );
  }
}
