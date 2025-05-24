import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              )
          ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
