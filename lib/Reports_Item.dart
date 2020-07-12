import 'package:flutter/material.dart';

import './Reports.dart';
import './ReportCard.dart';

class ReportsItem extends StatefulWidget {
  final Reports reports;

  ReportsItem(this.reports);
  
  @override
  _ReportsItemState createState() => _ReportsItemState();
}

class _ReportsItemState extends State<ReportsItem> {
  //var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ReportCard(widget.reports.numberOfStudents, widget.reports.menuServed),
          ReportCard(widget.reports.numberOfStudents, widget.reports.menuServed),
          ReportCard(widget.reports.numberOfStudents, widget.reports.menuServed),
      ],
      ),
    );
  }
}