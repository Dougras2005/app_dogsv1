import 'package:flutter/material.dart';

class DogPageForm extends StatefulWidget {
  const DogPageForm({super.key});

  @override
  State<DogPageForm> createState() => _DogPageFormState();
}

class _DogPageFormState extends State<DogPageForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre seus Dogs'),
        backgroundColor: const Color.fromARGB(255, 158, 7, 113),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Card(
            elevation: 5,
            color: const Color.fromARGB(255, 233, 190, 226),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(child: Column(children: [
                const Text(
                  'Cadastre um novo Dog',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 141, 26, 145)
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    labelStyle:  TextStyle(color: Color.fromARGB(255, 82, 6, 92)),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 82, 6, 92))
                    ) 
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Idade',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 82, 6, 92)),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 82, 6, 92))
                    ) 
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor entre com um nome';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Por favor entre com o número válido';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 226, 148, 203),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 30.0,
                      ),
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    icon: const Icon(Icons.save, size: 24),
                    label: const Text(
                      'Salvar',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
              ],)),
            ),
          )
        ],),
      ),
    );
  }
}