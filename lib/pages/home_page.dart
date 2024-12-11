import 'package:daily_funds/components/transaction_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: const Text("Despesas Pessoais"),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 5,
            child: Text(
              "Gráfico de Gastos",
            ),
          ),
          TransactionUser()
        ],
      ),
    );
  }
}
