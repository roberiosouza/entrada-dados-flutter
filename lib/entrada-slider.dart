import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Slider(
                label: "Valor: " + _valor.toString(),
                divisions: 10,
                value: _valor,
                activeColor: Colors.red,
                inactiveColor: Colors.blueAccent,
                min: 0,
                max: 10,
                onChanged: (double novoValor) {
                  setState(() {
                    _valor = novoValor;
                  });
                }),
            ElevatedButton(onPressed: () {}, child: Text("Salvar"))
          ],
        ),
      ),
    );
  }
}
