import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Tente uma, duas, três vezes e se possível tente a quarta, a quinta e quantas vezes for necessário. Só não desista nas primeiras tentativas, a persistência é amiga da conquista. Se você quer chegar aonde a maioria não chega, faça o que a maioria não faz.",
    "O sucesso é um professor traiçoeiro. Ele seduz pessoas inteligentes e as faz pensar que elas não podem perder tudo.",
    "Escolho uma pessoa preguiçosa para desenvolver um trabalho árduo. Por causa da preguiça, ela vai descobrir um meio simples de resolver o problema.",
    "Se você acha que seu pai ou seu professor são rudes, espere até ter um chefe. Ele não terá pena de você.",
    "Nunca se compare com ninguém neste mundo. Caso o faça, entenda que você estará insultando a si mesmo.",
    "Se você quer ser bem-sucedido precisa de dedicação total, buscar seu último limite e dar o melhor de si mesmo"
  ];

  var _fraseDia = "Nova Frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseDia = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia!"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        /*decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/logo.png"),
            Text(
              _fraseDia,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: _gerarFrase,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
