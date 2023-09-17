import 'package:flutter/material.dart';
import 'package:cstore/screens/category_list.dart';  // Make sure to import the necessary screen

class CategoryWidget extends StatelessWidget {
  // Dummy category data
  final List<Map<String, dynamic>> categories = [
    {'icon': Icons.home, 'name': 'Home'},
    {'icon': Icons.car_rental, 'name': 'Cars'},
    {'icon': Icons.bike_scooter, 'name': 'Bikes'},
    {'icon': Icons.desktop_windows, 'name': 'Electronics'},
    {'icon': Icons.watch, 'name': 'Watches'},
    {'icon': Icons.sports_baseball, 'name': 'Sports'},
    {'icon': Icons.fastfood, 'name': 'Food'},
    {'icon': Icons.book_online, 'name': 'Books'},
    {'icon': Icons.beach_access, 'name': 'Travel'},
    {'icon': Icons.shopping_bag, 'name': 'Shopping'},
    {'icon': Icons.music_note, 'name': 'Music'},
    {'icon': Icons.movie, 'name': 'Movies'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryProductListPage(categoryName: categories[index]['name']),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: (index < 4) ? BorderSide.none : BorderSide(color: Colors.grey[300]!),
                left: (index % 4 == 0) ? BorderSide.none : BorderSide(color: Colors.grey[300]!),
                right: (index == categories.length - 1 || (index + 1) % 4 == 0)
                    ? BorderSide.none
                    : BorderSide(color: Colors.grey[300]!),
                bottom: (index >= categories.length - 4)
                    ? BorderSide.none
                    : BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(categories[index]['icon'], size: 40.0, color: Theme.of(context).primaryColor),
                  Text(
                    categories[index]['name'],
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
