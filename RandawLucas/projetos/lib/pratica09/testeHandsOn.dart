import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
  

}

class HomeState extends State<Home>{
  int numeroVezes = 0;

  void buttonPress(){
    numeroVezes += 1;
    print(numeroVezes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aula - 06/09'),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Número de vezes que o botão foi precionado: $numeroVezes'),
            ],),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(buttonPress);
              },
              child: Icon(Icons.add),
              ),
      );
  }
}
void main(){
  runApp(
    MaterialApp(
      title: 'Aula de Widgets',
      home: Home(), 
    )
  );
}