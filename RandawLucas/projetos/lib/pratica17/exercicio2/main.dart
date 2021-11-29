import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDolar: (context) => SegundaRota(),
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
  TextEditingController reaisController = TextEditingController();
  double reais = 0;

  void converter() {
    reais = double.parse(this.reaisController.text);

    Navigator.pushNamed(
      context,
      SegundaRota.caminhoDolar,
      arguments: ArgumentoReais(reais),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Reais'),
      ),
      body: Column(
        children: [
          TextField(
            controller: reaisController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => reaisController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'Valor em Reais',
            ),
          ),
          ElevatedButton(child: Text("Converter"), onPressed: converter),
        ],
      ),
    );
  }
}

class SegundaRota extends StatefulWidget {
  static const caminhoDolar = '/segundaRota';
  @override
  SegundaRotaState createState() {
    return SegundaRotaState();
  }
}

class SegundaRotaState extends State<SegundaRota> {
  TextEditingController dolarController = TextEditingController();
  double reais = 0;
  double dolar = 0;

  void converter() {
    dolar = double.parse(this.dolarController.text);

    Navigator.pushNamed(
      context,
      RotaGenerica.caminhoDaRota,
      arguments: ArgumentosDaRota('Conversão Real/ Dolar', reais, dolar),
    );
  }

  @override
  Widget build(BuildContext context) {
    ArgumentoReais argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentoReais;
    reais = argumentos.reais;
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor do dolar'),
      ),
      body: Column(
        children: [
          TextField(
            controller: dolarController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => dolarController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'Valor do Dolar',
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
    double resultado = 0;
    resultado = argumentos.reais * argumentos.dolar;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Valor convertido de Reais para Dolar: ${resultado}',
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
  double reais;
  double dolar;
  ArgumentosDaRota(this.titulo, this.reais, this.dolar);
}

class ArgumentoReais {
  double reais;
  ArgumentoReais(this.reais);
}
