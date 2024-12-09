import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const TextField(
            // controller: title,
            // onChanged: (newValor) => value = newValor,
            decoration: InputDecoration(
              label: Text("Titulo"),
            ),
          ),
          const TextField(
            // controller: value,
            // onChanged: (newValor) => title = newValor,
            decoration: InputDecoration(
              label: Text("Valor (R\$)"),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
              textStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.black),
              ),
            ),
            onPressed: () {},
            child: const Text("Registrar"),
          )
        ],
      ),
    );
  }
}
