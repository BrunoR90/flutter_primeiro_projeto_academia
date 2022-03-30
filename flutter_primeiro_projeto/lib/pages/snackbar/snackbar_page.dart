import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              // ignore: prefer_const_constructors
              final snackbar = SnackBar(    // Implementando mensagem de snackbar ao botão.
                content: const Text('Usuário salvo com sucesso!',
                ),
                );
                
                ScaffoldMessenger.of(context).showSnackBar(snackbar);  // Fim da snackbar.
            }, 
            child: const Text('Simple SnackBar',
            ),
            ),

            ElevatedButton(onPressed: () {
              final snackbar = SnackBar(    // SnackBar com botão na frente (ver na tela do emulador).
                content: const Text('Usuário salvo com sucesso!',
                ),
                backgroundColor: Colors.amber,
                action: SnackBarAction(label: 'Desfazer', onPressed: () {
                  // ignore: avoid_print
                  print('Clicado!');
                } ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);

            }, 
            child: const Text('Action SnackBar',
            ),
            ),
          ],
        ),
      ),
    );
  }
}