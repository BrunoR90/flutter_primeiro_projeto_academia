// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(quarterTurns: -1,
                child: Container(
                  padding: const EdgeInsets.all(10
                  ),
                  color: Colors.red,
                  child: const Text('Bruno'
                  ),
                  ),

                ),
                const Icon(Icons.ac_unit
                ),
              ],
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text('Salvar'
            ),
            style: TextButton.styleFrom(
              primary: Colors.red,
              padding: const EdgeInsets.all(50
              ),
              minimumSize: const Size(50, 10
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30
                ),
                ),
              ),
            ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app
            ),
            ),

            ElevatedButton(onPressed: () {}, child: const Text('Salvar'
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shadowColor: Colors.blue,
              minimumSize: const Size(120, 50
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60
                ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 10
            ),

            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.airplane_ticket
            ), 
            label: const Text('Modo Avião'
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shadowColor: Colors.blue,
              minimumSize: const Size(120, 50
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30
                ),
                ),
              ),
            ),
            ),
           const SizedBox(height: 10),

           ElevatedButton(onPressed: () {}, 
           child: const Text('Salvar'
           ),
           style: ButtonStyle(
             shadowColor: MaterialStateProperty.all(Colors.blue),
             maximumSize: MaterialStateProperty.all(
               const Size(120, 50
               ),
             ),
             backgroundColor: MaterialStateProperty.resolveWith((states){
               if(states.contains(MaterialState.pressed)) {
                 return Colors.black;
               }else if(states.contains(MaterialState.hovered)) {
                 return Colors.amber;
               }
               return Colors.red;
             }
           ),
           ),
           ),
          const SizedBox(height: 10),
           
           InkWell(
             onTap: () {},
             child: const Text('InkWell'
             ),
           ),

           GestureDetector(
             child: const Text('Gesture detector'
             ),
             onTap: () => print('Gesture Clicado'),
             onVerticalDragStart: (_) => print('Gesture Movimentado'),
           ),

           Container(
             width: 300,
             height: 100,
             decoration: BoxDecoration(
               gradient: const LinearGradient(colors: [Colors.blue, Colors.green]
               ),
               borderRadius: BorderRadius.circular(50
               ),
               boxShadow: const [
                 BoxShadow(
                   blurRadius: 10, offset: Offset(0,5
                   ),
                   color: Colors.red,
                 ),
               ]
             ),
             child: InkWell(
               borderRadius: BorderRadius.circular(50
               ),
               onTap: () {},
               child:
                 const Center(
                   child: Text('Botão Salvar', style: TextStyle(color: Colors.white
                    ),
                   ),
                 ),
                ),
              ),
            ],
          ),
        ),
      );          
  }
}