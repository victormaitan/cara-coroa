import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String resultado;

  Resultado(this.resultado);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _voltarTela() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6aba8c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.resultado),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: GestureDetector(
                onTap: () {
                  _voltarTela();
                },
                child: Image.asset(
                  "images/botao_voltar.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
