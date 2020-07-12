import 'package:flutter/material.dart';

import './Reports_Item.dart';
import './Reports.dart';

class ReportsScreen extends StatefulWidget{
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {

  final reportsData = [
      Reports(id: '1', numberOfStudents: 23, menuServed: ['Idli', 'Rice', 'Sambar']),
      Reports(id: '2', numberOfStudents: 30, menuServed: ['Idli', 'Rice', 'Sambar']),
      Reports(id: '3', numberOfStudents: 33, menuServed: ['Idli', 'Rice', 'Sambar']),
      Reports(id: '4', numberOfStudents: 36, menuServed: ['Idli', 'Rice', 'Sambar']),
      Reports(id: '5', numberOfStudents: 40, menuServed: ['Idli', 'Rice', 'Sambar']),
      Reports(id: '6', numberOfStudents: 27, menuServed: ['Idli', 'Rice', 'Sambar']),
    ].toList();

    var _month = ['Select','January','February','March','April','May','June', 'July','August','September','October','November','December'];
    var _currentItemSelected = 'Select';
    //double height = 15;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Reports History'),),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DropdownButton<String>(
              //itemHeight: height,
              items: _month.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              _dropDownItemSelected(newValueSelected);
            },
            value: _currentItemSelected,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx,i) => ReportsItem(reportsData[i]),
                itemCount: reportsData.length,
              ),
            ),
          ],
        )
      )
    );
  }
  void _dropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}