// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);  // Mostra o tamanho da tela, largura e altura.

    print ('Largura ${mediaQuery.size.width}');
    print ('Altura ${mediaQuery.size.height}');
    print ('Orientação ${mediaQuery.orientation}');   // Orientação é como se encontra a posição da tela, padrão ou deitada.
    print ('Padding TOP ${mediaQuery.padding.top}');    // Aqui se usa para exibir a parte referente a "status bar", a barra onde fica o relógio, status da bateria e etc.
    print ('Tamanho AppBarDefault $kToolbarHeight');

    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery'
      ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width,
              height: mediaQuery.size.height * .5,  // "* .5" serve para definir o tamanho da altura, nesse caso, 50% da tela. 
              
            ),
          ],
        ),
      ),
    );
  }
}