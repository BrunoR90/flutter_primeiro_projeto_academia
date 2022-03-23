// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'
        ),
      ),
      
      body: ListView.builder(
        itemCount: 18,
        itemBuilder: (context, index) {
          print('Carregando o índice $index');
          return ListTile(
            title: Text('Indice $index'
            ),
            subtitle: const Text('Flutter é Top'
            ),
            leading: const CircleAvatar(
            ),
            trailing: const CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png'),
            ),
          );
        },
        ),
    );
  }
}