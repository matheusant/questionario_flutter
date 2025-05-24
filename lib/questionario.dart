import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;


  @override
  Widget build(BuildContext context) {

  final List<String> respostas = perguntas[perguntaSelecionada]['respostas'] as List<String>;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((t) => Resposta(t, responder)),
      ],
    );
  }
}
