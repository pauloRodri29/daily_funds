import 'package:daily_funds/components/transaction_form.dart';
import 'package:daily_funds/components/transaction_list.dart';
import 'package:daily_funds/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: "Teclado mecânico",
      value: 120.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "Sapato",
      value: 130.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: "Monitor 24°",
      value: 790.20,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), const TransactionForm()],
    );
  }
}
