import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final Color fondo = const Color(0xFFAFDDFF);
  final Color encabezado = const Color(0xFF60B5FF);
  final Color campos = const Color(0xFFFFECDB);
  final Color boton = const Color(0xFFFF9149);
  final Color texto = const Color(0xFF222222);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _celularController = TextEditingController();
  final TextEditingController _contraseniaController = TextEditingController();
  final TextEditingController _validarcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        title: const Text('Registro de usuario'),
        backgroundColor: encabezado,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Icon(Icons.person_add, size: 80, color: encabezado),
              const SizedBox(height: 20),
              TextFormField(
                controller: _nombresController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Nombres',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Digite sus nombres" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _apellidosController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Apellidos',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Digite sus apellidos" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) => value!.isEmpty ? "Digite su email" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _celularController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Celular',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Digite su celular" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _contraseniaController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Digite su contraseña" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _validarcController,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: campos,
                  labelText: 'Validar Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? "Digite su contraseña" : null,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: boton,
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text(
                  'Registrarse',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ya esta registrado", style: TextStyle(color: texto)),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "login",
                      style: TextStyle(
                        color: encabezado,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}