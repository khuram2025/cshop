import 'package:flutter/material.dart';


class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final String percentageChange;

  InfoCard({
    required this.icon,
    required this.title,
    required this.amount,
    required this.percentageChange,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: isMobile ? 185 : 328,
        height: isMobile ? 100 : 143,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            // 1st Column: Icon
            Icon(icon, size: isMobile ? 20 : 40),

            SizedBox(width: 5), // space between columns

            // 2nd Column: Title, Amount, View All
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: TextStyle( fontSize: isMobile ? 11 : 13, color: Color(0xff8c9097))),
                  Text(amount, style: TextStyle(fontSize: isMobile ? 14 : 24, color: Color(0xff333335))),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      // Navigate or perform action
                    },
                    child: Text('View all', style: TextStyle(color: Color(0xff845adf), fontSize: 13.008)),
                  ),
                ],
              ),
            ),

            SizedBox(width: 5), // space between columns

            // 3rd Column: Percentage Change
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    percentageChange,
                    style: TextStyle(
                      fontSize: 13.008,
                      color: percentageChange.startsWith('+') ? Color(0xff26bf94) : Colors.red,
                    ),
                  ),
                  Text(
                    "this month",
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xff8c9097),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}