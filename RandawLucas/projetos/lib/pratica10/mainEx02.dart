import 'package:flutter/material.dart';

void main() => runApp(CalculadoraApp());

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PaginaPrincipal());
  }
}

class PaginaSecundaria extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página secundaria"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
             child: Text("Chamar Página 1")),
      )
    );
  }

}

class PaginaPrincipal extends StatefulWidget {
  @override
  PaginaPrincipalState createState() {
    return PaginaPrincipalState();
  }
}

class PaginaPrincipalState extends State<PaginaPrincipal> {
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();
  double numero1 = 0;
  double numero2 = 0;
  double resultado = 0;
  String operador = "";

  void somar() {
    setState(() {
      operador = "+";
      numero1 = double.parse(numero1Controller.text);
      numero2 = double.parse(numero2Controller.text);
      resultado = numero1 + numero2;
    });
  }

  void subtrair() {
    setState(() {
      operador = "-";
      numero1 = double.parse(numero1Controller.text);
      numero2 = double.parse(numero2Controller.text);
      resultado = numero1 - numero2;
    });
  }

  void multiplicar() {
    setState(() {
      operador = "*";
      numero1 = double.parse(numero1Controller.text);
      numero2 = double.parse(numero2Controller.text);
      resultado = numero1 * numero2;
    });
  }

  void dividir() {
    setState(() {
      operador = "/";
      numero1 = double.parse(numero1Controller.text);
      numero2 = double.parse(numero2Controller.text);
      resultado = numero1 / numero2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PaginaSecundaria()));
            },
             child: Text("Chamar Página 2")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numero1Controller,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        numero1Controller.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Informe o primeiro número:"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numero2Controller,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        numero2Controller.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Informe o segundo número:"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: somar, child: Text("+")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: subtrair, child: Text("-")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ElevatedButton(onPressed: multiplicar, child: Text("*")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: dividir, child: Text("/")),
                ),
              ],
            ),
            Text("$numero1 $operador $numero2 = $resultado")
          ],
        ));
  }
}