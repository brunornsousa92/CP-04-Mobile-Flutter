import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiplicadorNumeros(),
    );
  }
}

class MultiplicadorNumeros extends StatefulWidget {
  const MultiplicadorNumeros({Key? key}) : super(key: key);

  @override
  _MultiplicadorNumerosState createState() => _MultiplicadorNumerosState();
}

class _MultiplicadorNumerosState extends State<MultiplicadorNumeros> {
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();
  String resultado = "";

  void _calcularMultiplicacao() {
    double numero1 = double.parse(numero1Controller.text);
    double numero2 = double.parse(numero2Controller.text);
    double resultadoMultiplicacao = numero1 * numero2;

    setState(() {
      resultado = "Resultado: $resultadoMultiplicacao";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiplicador de Números"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          _campo("Número 1", numero1Controller),
          const SizedBox(height: 20),
          _campo("Número 2", numero2Controller),
          const SizedBox(height: 30),
          _button(),
          const SizedBox(height: 16),
          Text(
            resultado,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  _campo(String label, TextEditingController controller) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      controller: controller,
    );
  }

  _button() {
    return ElevatedButton(
      onPressed: _calcularMultiplicacao,
      child: const Text("Calcular"),
    );
  }
}
