import 'package:flutter/material.dart';
import 'routes/primeiraRota.dart';
import 'routes/rotaGeral.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRota(),
      routes: {
        PrimeiraRota.routeName: (context) => PrimeiraRota(),
        rotaGeral.routeName: (context) => rotaGeral(),
      },
    );
  }
}
