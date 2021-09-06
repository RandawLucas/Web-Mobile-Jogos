import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.purple,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.blue.withAlpha(0),
                    Colors.blue,
                    Colors.black45
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Image.network(
                    'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
