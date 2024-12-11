import 'dart:math';

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
  final List<Transaction> _transactions = [];

  //Função para adcionar uma nova transição na lista
  void addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _transactions.isNotEmpty
            ? TransactionList(_transactions)
            : const SizedBox(
                child: Text("Sem dados registrados"),
              ),
        TransactionForm(
          addTransaction,
        ),
      ],
    );
  }
}
