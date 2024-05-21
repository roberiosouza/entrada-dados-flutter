import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EntradaDados extends StatefulWidget {
  const EntradaDados({super.key});

  @override
  State<EntradaDados> createState() => _EntradaDadosState();
}

class _EntradaDadosState extends State<EntradaDados> {
  TextEditingController _controllerTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de dados"),
          backgroundColor: Colors.lightGreen,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Digite um texto"),
                  maxLength: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Digite um valor"),
                  obscureText: true,
                  maxLength: 4,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  onChanged: (String texto) {
                    print("Texto digitado: " + texto);
                  },
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Digite um e-mail"),
                  style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                  onSubmitted: (String texto) {
                    print("Texto eviado: " + texto);
                  },
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration:
                      InputDecoration(labelText: "Digite uma data ou hora"),
                  controller: _controllerTexto,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Texto salvo: " + _controllerTexto.text);
                    },
                    child: Text("Salvar")),
              ],
            ),
          ),
        ));
  }
}
