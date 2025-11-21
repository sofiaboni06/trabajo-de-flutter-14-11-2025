import 'package:flutter/material.dart';
import 'package:flutter_opera_mate_login_register/screen/mainOption.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final TextEditingController _number1controller = TextEditingController();
  final TextEditingController _number2controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  double? _resultado;
  String? _mensajeError;
  final List<String> _operaciones = ['suma', 'resta', '*', '/'];
  String _operacionSeleccionada = 'suma';

  void _calcular() {
    if (!_validar()) return;
    double a = double.parse(_number1controller.text);
    double b = double.parse(_number2controller.text);
    setState(() {
      switch (_operacionSeleccionada) {
        case 'suma':
          _resultado = a + b;
          _mensajeError = null;
          break;
        case 'resta':
          _resultado = a - b;
          _mensajeError = null;
          break;
        case '*':
          _resultado = a * b;
          _mensajeError = null;
          break;
        case '/':
          if (b == 0) {
            _resultado = null;
            _mensajeError = 'Error: división por cero';
          } else {
            _resultado = a / b;
            _mensajeError = null;
          }
          break;
      }
    });
  }

  bool _validar() {
    final ok = _formKey.currentState?.validate() ?? false;
    if (!ok) {
      setState(() => _resultado = null);
    }
    return ok;
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
        title: Text('Calculadora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Ingrese dos números',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[400],
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _number1controller,
                decoration: InputDecoration(
                  labelText: 'Primer número',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Ingrese un número';
                  if (double.tryParse(value) == null) return 'Valor no válido';
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _number2controller,
                decoration: InputDecoration(
                  labelText: 'Segundo número',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Ingrese un número';
                  if (double.tryParse(value) == null) return 'Valor no válido';
                  return null;
                },
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _operacionSeleccionada,
                decoration: InputDecoration(
                  labelText: 'Operación',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                items:
                    _operaciones
                        .map(
                          (op) => DropdownMenuItem(value: op, child: Text(op)),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _operacionSeleccionada = value;
                    });
                  }
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _calcular,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[400],
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),

              SizedBox(height: 20),
              if (_mensajeError != null) ...[
                Text(
                  _mensajeError!,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
              ],

              Text(
                _resultado == null
                    ? 'Resultado: -'
                    : 'Resultado: ${_resultado!}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
