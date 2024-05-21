import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor do mundo!"),
                checkColor: Colors.red,
                activeColor: Colors.black12,
                value: _comidaBrasileira,
                onChanged: (bool? check) {
                  setState(() {
                    _comidaBrasileira = check!;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A segunda melhor do mundo!"),
                checkColor: Colors.red,
                activeColor: Colors.black12,
                value: _comidaMexicana,
                onChanged: (bool? check) {
                  setState(() {
                    _comidaMexicana = check!;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print("Comida Brasileira: " +
                      _comidaBrasileira.toString() +
                      " Comida Mexicana: " +
                      _comidaMexicana.toString());
                },
                child: Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ))

            /* Text("Comida Brasileira"),
            Checkbox(
                value: _estadoSelecionado,
                onChanged: (bool? valor) {
                  setState(() {
                    _estadoSelecionado = valor!;
                  });
                })*/
          ],
        ),
      ),
    );
  }
}
