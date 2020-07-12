import 'package:flutter/material.dart';

import './Reports.dart';

class ReportCard extends StatelessWidget{
  final int number;
  final List<String> meals;

  ReportCard(this.number,this.meals);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('july'),
            Column(children: <Widget>[
              Text('No. of students: ${number}'),
              Text('Menu Served: ${meals}'),
          ],
          ),
        ],
        ),
      ),
    );
  }

}