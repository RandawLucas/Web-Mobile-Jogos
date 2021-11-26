import 'package:flutter/material.dart';
import '../routes/rotaGeral.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          itemExtent: 200,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent[700],
              ),
              accountName: Text("Ana"),
              accountEmail: Text("ana@ana.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 02.');
                Navigator.pushNamed(
                  context,
                  rotaGeral.routeName,
                  arguments: ArgumentosRota(
                    color: Colors.black,
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
                Navigator.pushNamed(
                  context,
                  rotaGeral.routeName,
                  arguments: ArgumentosRota(
                    title: 'Terceira Rota',
                    color: Colors.purple.shade900,
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Rota 01"),
              subtitle: Text("Voltar para a Rota 01"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Voltar para a Rota 01.');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
