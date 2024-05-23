import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _selecaoUsuario = false;
  bool _escolhaConfig = false;

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
            SwitchListTile(
                title: Text("Receber notificações?"),
                value: _selecaoUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _selecaoUsuario = valor;
                  });
                }),
            SwitchListTile(
                title: Text("Alterar configurações?"),
                value: _escolhaConfig,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaConfig = valor;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print("Resultado notificação: " +
                      _selecaoUsuario.toString() +
                      " Resultado configuração: " +
                      _escolhaConfig.toString());
                },
                child: Text("Salvar"))
            /*Switch(
                value: _selecaoUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _selecaoUsuario = valor;
                  });
                }),
            Text("Receber notificações?")*/
          ],
        ),
      ),
    );
  }
}
