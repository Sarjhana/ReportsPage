import 'package:flutter/cupertino.dart';

class Reports{
  final String id;
  final int numberOfStudents;
  final List<String> menuServed;
  //final DateTime dateTime;

  const Reports({
    @required this.id,
    @required this.numberOfStudents,
    @required this.menuServed,
    //@required this.dateTime,
  });
}