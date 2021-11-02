import 'dart:math';

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class CaraCoroa extends StatefulWidget {
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  List imagens = ["images/moeda_cara.png", "images/moeda_coroa.png"];

  void _abrirResultado() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Resultado(_geraResultado())));
  }

  String _geraResultado() {
    int caraOuCoroa = Random().nextInt(2);
    return imagens[caraOuCoroa];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6aba8c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: GestureDetector(
                onTap: () {
                  _abrirResultado();
                },
                child: Image.asset("images/botao_jogar.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
