//import 'package:flutter/material.dart'; //internally based on foundtaion.dart
import 'package:flutter/foundation.dart';

class Transaction {
  String id; //unique id of each transaction
  String title;
  double amount;
  DateTime date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date}); //counstructor
}
