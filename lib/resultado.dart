import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacaoTotal, this.reiniciarPerguntas, {super.key});

  final pontuacaoTotal;
  final void Function() reiniciarPerguntas;

  String get fraseResultado {
    switch (pontuacaoTotal) {
      case < 8:
        return 'Parabéns! Você é incrível!';
      case < 12:
        return 'Você é bom, mas pode melhorar!';
      case < 16:
        return 'Você é muito bom!';
      default:
        return 'Você é o melhor!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text(fraseResultado, style: TextStyle(fontSize: 28))),
        TextButton(
          onPressed: reiniciarPerguntas,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
