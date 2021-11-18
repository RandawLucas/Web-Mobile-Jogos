import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String cep = "";
  String logradouro = "";
  String complemento = "";
  String localidade = "";
  String bairro = "";

  Future<void> testeHttp() async {
    Uri url = Uri.parse("https://viacep.com.br/ws/30512140/json/");
    var response = await http.get(url);
    print(response.statusCode);
    print(response.body);
    var dadosLocalidade = jsonDecode(response.body);
    cep = dadosLocalidade["cep"];
    logradouro = dadosLocalidade["logradouro"];
    complemento = dadosLocalidade["complemento"];
    bairro = dadosLocalidade["bairro"];
    localidade = dadosLocalidade["localidade"];
    setState(() {});
  }

  @override
  void initState() {
    testeHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('CEP: $cep'),
            Text('Logradouro: $logradouro'),
            Text('Complemento: $complemento'),
            Text('Bairro: $bairro'),
            Text('Localidade: $localidade'),
          ],
        ),
      ),
    );
  }
}