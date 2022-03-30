import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';

import 'pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'pages/container/container_page.dart';
import 'pages/detalhe2_page.dart';
import 'pages/home/home_page.dart';
import 'pages/media_query/media_query_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Colors.amber,
        primaryColorLight: Colors.red,
        primaryColorDark: Colors.amberAccent,
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.deepOrange
          ), 
          ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ), 
          ),
      ),
      
    routes: {
      '/': (_) => const HomePage(),
      '/container': (_) => const ContainerPage(),
      '/rows_columns': (_) => const RowsColumnPage(),
      '/detalhe2': (_) => const Detalhe2Page(),
      '/media_query': (_) => const MediaQueryPage(),
      '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
      '/scrolls/single_child': (_) => const SinglechildscrollviewPage(),
      '/scrolls/list_view': (_) => const ListviewPage(),
      '/dialogs': (_) => const DialogsPage(),
      '/snackbars': (_) => const SnackBarPage(),
      '/forms': (_) => const FormsPage(),
    },

    );
  }
}