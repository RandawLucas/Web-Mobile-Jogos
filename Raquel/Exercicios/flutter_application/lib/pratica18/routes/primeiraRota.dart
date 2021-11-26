import 'package:flutter/material.dart';
import '/../pratica18/components/menu.dart';

class PrimeiraRota extends StatelessWidget {
  static String routeName = '/primeira_rota';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Menu(),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}
