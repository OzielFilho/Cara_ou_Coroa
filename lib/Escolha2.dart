
import 'package:caraoucoroa/Resultado.dart';
import 'package:flutter/material.dart';
class Escolha2 extends StatefulWidget {
  @override
  _Escolha2State createState() => _Escolha2State();
}

class _Escolha2State extends State<Escolha2> {
  void _opcaoJogador2(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Resultado() )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      appBar: AppBar(
        title: Text("Jogador 2"),
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
                onTap: _opcaoJogador2,
                child: Image.asset("imagens/moeda_cara.png"),
              ),
              GestureDetector(
                onTap: _opcaoJogador2,
                child: Image.asset("imagens/moeda_coroa.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
