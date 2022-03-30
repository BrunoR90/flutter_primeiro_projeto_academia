import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({ Key? key }) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  
  // String texto = '';   String do TextField.

  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = 'Categoria';

@override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms',
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
              //  TextField(                   TextField Comentado para exemplo, para habilitar basta remover as // aqui e na String 'Texto'.
              //    onChanged: (String value){
              //      setState(() {
              //        texto = value;
              //      });
              //    },
              //  ),
              //  const SizedBox(height: 10,
              //  ),
              //  Text('Texto digitado $texto',
              //  ),
      
              TextFormField(
                controller: nameEC,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                maxLines: null,   // Permite várias linhas.
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                  isDense: true,

                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preeenchido';
                  }
                }
              ),

             const SizedBox(height: 10,
             ),

              TextFormField(
                controller: nameEC,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              //  maxLines: null,   // Permite várias linhas, mas está desabilitado neste TextformField, pois, não funciona com o obscureText.
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                  isDense: true,

                ),
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo X não preeenchido';
                  }
                }
              ),
      
             // TextFormField(
               // autovalidateMode: AutovalidateMode.onUserInteraction,
               // validator: (String? value) {
               //   if (value == null || value.isEmpty) {
               //     return 'Campo X não preeenchido';
               //   }
              //  }
            //  ),
            
            const SizedBox(height: 10,
            ),

            DropdownButtonFormField<String>(
              value: categoria,
              elevation: 16,
              icon: const Icon(Icons.arrow_back_ios
              ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(

                ),
              ),
              validator: (String? value){
                if(value == null || value.isEmpty){
                  return 'Categoria não preenchida';
                }
              },
              onChanged: (String? newValue){
                if(newValue != null){
                  setState(() {
                    categoria = newValue;
                  });
                }
              },
              items: const [

                DropdownMenuItem(
                  value: 'Categoria 1',
                  child: Text('Categoria 1',
                ),
                ),
                DropdownMenuItem(
                  value: 'Categoria 2',
                  child: Text('Categoria 2',
                ),
                ),
                DropdownMenuItem(
                  value: 'Categoria 3',
                  child: Text('Categoria 3',
                ),
                ),
              ],
              ),
      
              ElevatedButton(
                onPressed: () {
                  var formValid = formKey.currentState?.validate() ?? false;
                  var message = 'Formulário Inválido!';
                if (formValid) {
                  message = 'Formulário Válido! (Name: ${nameEC.text})';
                }
                ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message),),);
              }, 
              child: const Text('Salvar',
              ),
              ),
      
              ],
      
            ),
          ),
        ),
      ),
    );
  }
}