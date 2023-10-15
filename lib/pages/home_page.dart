import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var number = 0;
  var qtDeClicks = 0;

  int _gerarNumeroAleatorio() {
    var numeroAleatorio = Random();
    return numeroAleatorio.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu app", style: GoogleFonts.pacifico()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            number = _gerarNumeroAleatorio();
            qtDeClicks++;
          });
        },
      ),
      // com colunas e alinhado ao centro
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(
      //         child: Text("Foi clicado $qtDeClicks vezes.",
      //             style: GoogleFonts.acme(fontSize: 20))),
      //     Center(
      //         child: Text("Numero gerado foi: $number",
      //             style: GoogleFonts.acme(fontSize: 20))),
      //   ],
      body: Container(
        //margin: const EdgeInsets.fromLTRB(16, 8, 0, 8,),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          //cross é horizontal e main vertical
          // já em linha Row, main é horizontal e cross vertical
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Foi clicado $qtDeClicks vezes.",
                style: GoogleFonts.acme(fontSize: 20)),
            Text("Numero gerado foi: $number",
                style: GoogleFonts.acme(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
