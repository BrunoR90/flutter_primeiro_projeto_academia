// ignore_for_file: avoid_unnecessary_containers, avoid_print, unused_local_variable, constant_identifier_names

import 'package:flutter/material.dart';

enum PopupMenuPages {   // Tipo da page/ valor da mesma (enum).
  container,
  rows_columns,
  media_query,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbars,
  forms,

}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'
      ),
      actions: [
        PopupMenuButton <PopupMenuPages> (  // PopupMenuButton é do tipo pages, leva a pages, vide o menu.
          onSelected: (PopupMenuPages valueSelected) {

           switch (valueSelected) {
             case PopupMenuPages.container:
              Navigator.of(context).pushNamed('/container');
              break;
             case PopupMenuPages.rows_columns:
               Navigator.of(context).pushNamed('/rows_columns');
               break;
             case PopupMenuPages.media_query:
               Navigator.of(context).pushNamed('/media_query');
               break;
             case PopupMenuPages.botoes_rotacao_texto:
               Navigator.of(context).pushNamed('/botoes_rotacao_texto');
               break;
            case PopupMenuPages.scrolls_single_child:
               Navigator.of(context).pushNamed('/scrolls/single_child');
               break;
            case PopupMenuPages.scrolls_list_view:
               Navigator.of(context).pushNamed('/scrolls/list_view');
               break;
            case PopupMenuPages.dialogs:
               Navigator.of(context).pushNamed('/dialogs');
               break;
            case PopupMenuPages.snackbars:
               Navigator.of(context).pushNamed('/snackbars');
               break;
            case PopupMenuPages.forms:
               Navigator.of(context).pushNamed('/forms');
               break;
           } 

          },
          itemBuilder: (BuildContext context) {
          return <PopupMenuItem <PopupMenuPages>> [
            
            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria um botão para o "Button".
              value: PopupMenuPages.container,
              child: Text('Container'),            // Acaba aqui.
            ),

            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.rows_columns,
              child: Text('Rows & Columns'),            // Acaba aqui.
            ),

            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.media_query,
              child: Text('MediaQuery'),            // Acaba aqui.
            ),

            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.botoes_rotacao_texto,
              child: Text('Botões e Rotação de Texto'),           // Acaba aqui.
            ),

            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.scrolls_single_child,
              child: Text('Scroll SingleChild'),           // Acaba aqui.
            ),

            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.scrolls_list_view,
              child: Text('Scroll ListView'),         // Acaba aqui.
            ),
            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.dialogs,
              child: Text('Dialogs'),         // Acaba aqui.
            ),
            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.snackbars,
              child: Text('Snackbars'),        // Acaba aqui.
            ),
            const PopupMenuItem <PopupMenuPages>(   // Aqui se cria outro botão para o "Button".
              value: PopupMenuPages.forms,
              child: Text('Forms'),       // Acaba aqui.
            ),

          ];
        },
        )
      ],
      
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueGrey,
        ),
      child: Center(
        child: Column(
          children: [
            Container(      // Exemplo de quando se necessita utilizar a nagevação e retonar algo.
              child: TextButton(
                onPressed: () async {
                  print('Antes de navegar para a pagina detalhe 2');
                  final retorno = await Navigator.of(context).pushNamed('/detalhe2');
               await Navigator.of(context).pushNamed('/detalhe2');
               print('Navegou para a pagina detalhe 2');
               print('O retorno de detalhe 2 é $retorno');
              },
              child: const Text('Ir para a pagina Detalhe2 e aguardar'),
              ),
            ),
            
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Botão X'
                  ),
                  ),
                  const ContainerX(),
                  TextButton(onPressed: () {}, child: const Text('Teste',
                  ),
                  )
                ],
              ) ,
            ),
          ],
        ),
      ),
      ),
      
    );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            width: 100,
            color: Theme.of(context).primaryColor,  // Container trazendo a sua cor da primary color definida previamente no Theme da main.dart, porém, pode também ser trazida customizada aqui mesmo na página, como pode-se notar no "body: Theme..." aqui nessa página.
    );
  }
}