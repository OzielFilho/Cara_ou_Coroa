import 'dart:math';
import 'package:flutter/material.dart';
class Resultado extends StatefulWidget {
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _voltar(){
    Navigator.pop(
        context,
    );
  }
  @override
  Widget build(BuildContext context) {
    var itens = ["cara","coroa"];
    int number = Random().nextInt(itens.length);
    var resultado = itens[number];
    var caminho = "cara";
    switch(resultado){
      case "cara":
        setState(() {
          caminho = "imagens/moeda_cara.png";
        });
        break;
      case "coroa":
        setState(() {
          caminho = "imagens/moeda_coroa.png";
        });
        break;
    }
    String op = "";
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20 ),
                  child: Text("Resultado",style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 50 ),
                  child: Image.asset(caminho),
                ),
                GestureDetector(
                  onTap:_voltar,
                  child: Image.asset("imagens/botao_voltar.png"),
                ),
              ],
            ),
          ),
        ),

      ),

    );
  }
}
