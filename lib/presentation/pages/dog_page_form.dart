import 'package:flutter/material.dart';
import 'package:path/path.dart';

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
        title: const Text('Cadastro de Dogs'),
        backgroundColor: const Color.fromARGB(255, 158, 7, 113),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Form(child: Column(children: [
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
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Idade',
                labelStyle: TextStyle(color: Color.fromARGB(255, 82, 6, 92)),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 82, 6, 92))
                ) 
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 121, 116, 116),
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
          ],))
        ],),
      ),
    );
  }
}