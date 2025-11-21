import 'package:flutter/material.dart';
import 'package:flutter_opera_mate_login_register/screen/mainOption.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}




class _addState extends State<add> {
  //Defino la logica de la operacion suma
  final TextEditingController _number1controller = TextEditingController();
  final TextEditingController _number2controller = TextEditingController();
  double _resultado = 0.0;
  void _calcularADD(){
    double number1 = double.tryParse(_number1controller.text) ?? 0.0;
    double number2 = double.tryParse(_number2controller.text) ?? 0.0;
    setState(() {
      _resultado = number1 + number2;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainOption()),
            );
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Digite los numeros ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange[400],
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _number1controller,
              decoration: InputDecoration(
                labelText: 'primer numero',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _number2controller,
              decoration: InputDecoration(
                labelText: 'primer numero',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                _calcularADD();
              },
              child: Text('Calcular', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Respuesta: $_resultado',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
