import 'package:caraoucoroa/Escolha2.dart';
import 'package:flutter/material.dart';

class Escolha1 extends StatefulWidget {
  @override
  _Escolha1State createState() => _Escolha1State();
}

class _Escolha1State extends State<Escolha1> {
  void _opcaoJogador1(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Escolha2()),

    );
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        title: Text("Jogador 1"),
        backgroundColor: Color(0xff61bd86),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _opcaoJogador1,
                child: Image.asset("imagens/moeda_cara.png"),
              ),
              GestureDetector(
                onTap: _opcaoJogador1,
                child: Image.asset("imagens/moeda_coroa.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
