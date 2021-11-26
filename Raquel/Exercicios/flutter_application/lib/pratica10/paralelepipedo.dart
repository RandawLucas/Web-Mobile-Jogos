import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController cumprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  String resp = "";
  resultador() {
    int cumprimento = int.parse(this.cumprimentoController.text);
    int largura = int.parse(this.larguraController.text);
    int resultado = cumprimento * largura * largura;
    this.resp =
        '$cumprimento * $largura * $largura = $resultado \n o volume do paralelepipedo é de $resultado ';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: cumprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => cumprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o cumprimento do paralelepipedo',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => larguraController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a largura do paralelepipedo',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(resultador());
              setState(resultador);
            },
            child: Text(
              'calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
