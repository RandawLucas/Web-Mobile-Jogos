/*
* Este exemplo exige que a linguagem Dart trate o código como
* "null safe". Para que o SDK suporte "null safety", o arquivo
* "pubspec.yaml" deve ter a seguinte instrução:
 environment:
 sdk: ">=2.12.0 <3.0.0"

*
* OBS 1: quando você quer especificar que uma variável pode
* armazenar um valor ou null, seu tipo deve ser declarado
* explicitamente como nullable. Isso é feito colocando um
* sinal de interrogação (?) após o nome do tipo.
*
* OBS 2: o sinal de exclamação (!) converte um tipo anulável
* (nullable) em um tipo não anulável (non-nullable).
*/
//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  TextEditingController temperaturaCelsiusController = TextEditingController();
  double celsius = 0;
  double resultado = 0;

  void converter() {
    celsius = double.parse(this.temperaturaCelsiusController.text);
    resultado = celsius * 1.8 + 32;

    Navigator.pushNamed(
      context,
      RotaGenerica.caminhoDaRota,
      arguments: ArgumentosDaRota('Conversão em Fahereit', celsius, resultado),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      body: Column(
        children: [
          TextField(
            controller: temperaturaCelsiusController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => temperaturaCelsiusController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'temperatura em graus Celsius',
            ),
          ),
          ElevatedButton(child: Text("Converter"), onPressed: converter),
        ],
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          ),
          Center(
            child: Text(
              'Graus Fahrenheit: ${argumentos.resultado.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;
  double resultado;
  ArgumentosDaRota(this.titulo, this.celsius, this.resultado);
}
