import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String _info = "Informe seus dados";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _reset() {
    setState(() {
      pesoController.text = "";
      alturaController.text = "";
      _info = "Informe seus dados";
    });
  }

  void _calculate() {
    double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text) / 100;
    double imc = peso / (altura * altura);

    setState(() {
      _info = "IMC = (${imc.toStringAsPrecision(3)})";
      if (imc < 18.6)
        _info += "Abaixo do peso";
      else if (imc >= 18.6 && imc <= 24.9)
        _info += "Peso ideal";
      else if (imc >= 24.9 && imc <= 29.9)
        _info += "Levemente acima do peso";
      else if (imc >= 24.9 && imc <= 34.9)
        _info += "Obesidade Grau I";
      else if (imc >= 34.9 && imc <= 39.9)
        _info += "Obesidade Grau II";
      else
        _info += "Obesidade Grau IIII";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculador IMC"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _reset,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (KG)",
                    labelStyle: TextStyle(color: Colors.blue)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 25),
                controller: pesoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe seu peso!";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura (CM)",
                    labelStyle: TextStyle(color: Colors.blue)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 25),
                controller: alturaController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe sua altura!";
                  }
                },
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15, 0.0, 15),
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _calculate();
                        }
                      },
                      child: Text(
                        "Calcular",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      color: Colors.blue,
                    ),
                  )),
              Text(_info,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 25))
            ],
          ),
        ),
      ),
    );
  }
}
