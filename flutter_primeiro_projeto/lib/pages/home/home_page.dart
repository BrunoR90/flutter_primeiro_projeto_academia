// ignore_for_file: avoid_unnecessary_containers, avoid_print, unused_local_variable, constant_identifier_names

import 'package:flutter/material.dart';

enum PopupMenuPages {   // Tipo da page/ valor da mesma.
  container,
  rows_columns,
  media_query,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,

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

          ];
        },
        )
      ],
      
      ),
      body: Container(      // Exemplo de quando se necessita utilizar a nagevação e retonar algo
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
      
    );
  }
}