import 'package:flutter/material.dart';

class MainOption extends StatefulWidget {
  const MainOption({super.key});

  @override
  State<MainOption> createState() => _MainOptionState();
}

class _MainOptionState extends State<MainOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('operaciones Arimeticas Login Registre',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange[400],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Image.network('https://picsum.photos/330/200'),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('Suma'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton suma');
              },
            ),
          ),
           SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('calculadora'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton suma');
              },
            ),
          ),
           SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('registro'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton suma');
              },
            ),
          ),
           SizedBox(height: 8),
          Card(
            child: ListTile(
              title: Text('login'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton suma');
              },
            ),
          )
        ],
      ),

    );
    
  }
}