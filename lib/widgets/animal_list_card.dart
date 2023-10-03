import 'package:flutter/material.dart';

class AnimalListCard extends StatelessWidget {
  final Map<String, dynamic> animal;
  final Function onTap;

  AnimalListCard({required this.animal, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
        elevation: 5,
        child: Container(
          height: 150,
          width: 400,
          child: Row(
            children: [
              Container(
                width: 130,
                height: 150,
                child: Image.asset(
                  animal['imagePath'],
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        animal['title'],
                        style: TextStyle(fontSize: 24, color: Color(0xFF444444), fontWeight: FontWeight.bold),
                      ),
                      Text('Weight: ${animal['weight']}'),
                      Text(
                        'Age: ${animal['age']}',
                        style: TextStyle(fontSize: 14, color: Color(0xFF222222)),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: animal['status'].asMap().entries.map<Widget>((entry) {
                            int idx = entry.key;
                            String status = entry.value;
                            bool isLast = idx == animal['status'].length - 1;

                            return Container(
                              margin: EdgeInsets.only(right: isLast ? 0 : 10),
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF33a137)),
                              ),
                              child: Text(
                                status,
                                style: TextStyle(color: Color(0xFF33a137), fontSize: 14),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
