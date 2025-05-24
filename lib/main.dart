import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Verde', 'Vermelho', 'Branco'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Peixe', 'Pássaro'],
    },
    {
      'texto': 'Qual seu esporte favorito?',
      'respostas': ['Futebol', 'Basquete', 'Vôlei', 'Natação'],
    },
  ];

  void _responder() {
    if (temMaisPerguntas) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temMaisPerguntas {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body:
            temMaisPerguntas
                ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder,
                )
                : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
