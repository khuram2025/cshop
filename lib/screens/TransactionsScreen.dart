import 'package:flutter/material.dart';
import '../widgets/infoCard.dart';
import '../widgets/layout.dart';
import '../widgets/side_menu.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      sideMenu: SideMenu(),
      mainColumn: TransactionsContent(),
      rightColumn: Center(child: Text('Right Column for Transactions')),
    );
  }
}

class TransactionsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cards for Income & Expense
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoCard(
                icon: Icons.arrow_upward,
                title: 'Total Income',
                amount: '568989.00',
                percentageChange: '+40%',
              ),
              SizedBox(width: 8.0),
              InfoCard(
                icon: Icons.arrow_downward,
                title: 'Total Expense',
                amount: '200000.00',
                percentageChange: '-10%',
              ),
            ],
          ),

          SizedBox(height: 16.0),

          // Button, Spacer and Dropdown
          Row(
            children: [
              Text(
                'Table Title',
                style: TextStyle(color: Color(0xff333335), fontSize: 15),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                ),
                child: Text('Add Income'),
              ),
              SizedBox(width: 10.0), // space between button and dropdown
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: "Option 1",
                    child: Text(
                      "Option 1",
                      style: TextStyle(color: Color(0xff8c9097), fontSize: 12),
                    ),
                  ),
                  // Add more options as needed
                ],
                onChanged: (value) {
                  // Handle dropdown change
                },
                hint: Text(
                  "Filter",
                  style: TextStyle(color: Color(0xff8c9097), fontSize: 12),
                ),
              ),
            ],
          ),

          SizedBox(height: 16.0),

          // Table for Transactions
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: isMobile ? 15.0 : 24.0,
                columns: [
                  DataColumn(label: Expanded(child: Text('Date'))),
                  DataColumn(label: Expanded(child: Text('Title'))),
                  DataColumn(label: Expanded(child: Text('Amount'))),
                  DataColumn(label: Expanded(child: Text('Category'))),
                  DataColumn(label: Expanded(child: Text('Action'))),
                ],
                rows: List.generate(10, (index) {
                  return DataRow(cells: [
                    DataCell(Text('10/10/2023')), // Sample Date
                    DataCell(Text('Title $index')),
                    DataCell(Text('\$50')), // Sample Amount
                    DataCell(Text('Category $index')),
                    DataCell(Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            // Edit action
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // Delete action
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.view_column),
                          onPressed: () {
                            // View action
                          },
                        ),
                      ],
                    )),
                  ]);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

