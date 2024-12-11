import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final title = TextEditingController();
  final value = TextEditingController();
  final void Function(String, double) onPressed;
  TransactionForm(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            controller: title,
            // onChanged: (newValor) => value = newValor,
            decoration: const InputDecoration(
              label: Text("Titulo"),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: value,
            // onChanged: (newValor) => title = newValor,
            decoration: const InputDecoration(
              label: Text("Valor (R\$)"),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
              textStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.black),
              ),
            ),
            onPressed: () {
              onPressed(title.text, double.parse(value.text));
            },
            child: const Text("Registrar"),
          )
        ],
      ),
    );
  }
}
