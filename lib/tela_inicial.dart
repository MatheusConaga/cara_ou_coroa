import "dart:math";
import "package:cara_ou_coroa/segunda_tela.dart";
import "package:flutter/material.dart";


class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

void _ExibirMoeda(BuildContext context){

  var itens = ["cara", "coroa"];
  var num = Random().nextInt(itens.length);
  var result = itens[num];

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SegundaTela(result),
    ),
  );
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset("images/botao_jogar.png"),
              ),
              onTap: () => _ExibirMoeda(context),
            ),
          ],
        ),
      ),
    );
  }
}
