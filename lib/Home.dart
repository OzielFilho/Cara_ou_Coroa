
import 'package:caraoucoroa/Escolha1.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _jogar(){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Escolha1() )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(//53c68c
      backgroundColor: Color(0xff61bd86),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Image.asset("imagens/logo.png"),
              ),

              GestureDetector(
                onTap: _jogar,
                child: Image.asset("imagens/botao_jogar.png"),
              )
            ],
          ),
        ),


      ),

    );
  }
}
