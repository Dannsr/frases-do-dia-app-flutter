import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
  ));  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    var _frases = ["Confie e sera traído. Descuide-se e será morto. Mate antes que te matem.", 
    "A solução não está em lutar ou em morrer, mas sim em viver de modo a te redimires dos teus pecados.",
    "Os melhores guerreiros nesta vida não são necessariamente aqueles com força ou mesmo aqueles com reflexos mais rápidos. Os melhores são aqueles que tem a força de vontade de deixar as espadas e procurar uma resposta mais construtiva ao desafio da vida.",
    "Pois o que dói mesmo não é o adeus, mas sim certeza do nunca mais."
    ];
    var _fraseGerada = "Clique abaixo para gerar uma frase!";
    void _gerarFrases(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,

      ),
      body: Center(child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Image.asset("images/logo.png"),
            Text(_fraseGerada, 
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Colors.black
              ),
            ),
            ElevatedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: _gerarFrases,
            )
          ],
        ),  
      ),
    ),
  );
  }
}