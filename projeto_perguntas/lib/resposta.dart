import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
         style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue), // Cor de fundo
          foregroundColor: WidgetStateProperty.all(Colors.white), // Cor do texto
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
