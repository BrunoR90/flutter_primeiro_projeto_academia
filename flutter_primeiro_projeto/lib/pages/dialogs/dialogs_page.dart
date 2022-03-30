import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {    // Aqui começa um ElevatedButton.
              showDialog(
                barrierDismissible: false,  // Faz com que a caixa de dialog não se feche quando clicando fora da mesma.  
                context: context, 
                builder: (_) {
                return DialogCustom(
                  context
                );
              });

            }, child: const Text('Dialog'
            ),
            ),    // Aqui termina o Button.
            
            ElevatedButton(onPressed: () {    // Aqui começa outro ElevatedButton.
              showDialog(context: context, builder: (context) {
                return SimpleDialog(
                  title: const Text('Simple Dialog'
                  ),
                  contentPadding: const EdgeInsets.all(10.0),
                  children: [ const
                    Padding(
                      padding: EdgeInsets.all(10.0
                    ),
                    child: Text('Título X'
                    ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Fechar Dialog'
                    ),
                    ),
                  ],
                );
              },);
            }, child: const Text('Simple Dialog'
            ),
            ),    // Aqui ele termina.
            
            ElevatedButton(onPressed: () {
              showDialog(
                context: context, builder: (context) {
                  return  AlertDialog(
                    title: const Text('Alert Dialog'
                    ),
                    content: SingleChildScrollView(
                      child: ListBody(children: const [
                        Padding(
                          padding: EdgeInsets.all(10
                          ),
                          child: Text('Deseja realmente salvar???'
                          ),
                          ),
                      ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: (){}, child: const Text('Cancelar'
                      ),
                      ),
                      TextButton(onPressed: (){}, child: const Text('Confirmar'
                      ),
                      ),
                    ],
                  );
                },
              );
            },  
            child: const Text('Alert Dialog'
            ),
            ),
            
            ElevatedButton(
              onPressed: () async {
              final selectedTime = await showTimePicker(
                context: context, initialTime: TimeOfDay.now(
                ),
                );
                print('O horário selecionado foi $selectedTime');
            }, 
              child: const Text('Time Picker'
            ),
            ),
            
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2025),
                  );
                  print('A data selecionada foi $selectedDate');
              }, 
              child: const Text('Date Picker'
            ),
            ),
          ],
        ),
      ),
    );
  }
}