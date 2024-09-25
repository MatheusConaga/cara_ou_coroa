import "package:flutter/material.dart";

class SegundaTela extends StatefulWidget {
  SegundaTela (this.moeda, {super.key});
  String moeda = '';
  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {

  var caminhoImagem = '';

  @override
  void initState(){
    super.initState();
    if(widget.moeda == "cara"){
      caminhoImagem = "images/moeda_cara.png";
    } else{
      caminhoImagem = "images/moeda_coroa.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset("images/botao_voltar.png"),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
