import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resultado = "";
  String classificacao = "";

  void _calcularIMC() {
    setState(() {
      double peso = double.tryParse(pesoController.text) ?? 0;
      double altura = double.tryParse(alturaController.text) ?? 0;
      double imc = peso / (altura * altura);

      resultado = "Seu IMC é: ${imc.toStringAsFixed(2)}";

      if (imc < 18.5) {
        classificacao = "Abaixo do peso";
      } else if (imc >= 18.5 && imc < 24.9) {
        classificacao = "Peso normal";
      } else if (imc >= 25 && imc < 29.9) {
        classificacao = "Sobrepeso";
      } else if (imc >= 30 && imc < 34.9) {
        classificacao = "Obesidade Grau 1";
      } else if (imc >= 35 && imc < 39.9) {
        classificacao = "Obesidade Grau 2";
      } else {
        classificacao = "Obesidade Grau 3";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
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
          _foto(),
          _campo("Peso (kg)", pesoController),
          const SizedBox(height: 20),
          _campo("Altura (m)", alturaController),
          const SizedBox(height: 30),
          _button(),
          const SizedBox(height: 16),
          Text(
            resultado,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Classificação: $classificacao",
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'data:image/png;base64,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',
        width: 450,
      ),
    );
  }

  _campo(String title, TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(color: Colors.blue),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 23.0),
      controller: controller,
    );
  }

  _button() {
    return Container(
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {
          _calcularIMC();
        },
        child: const Text(
          "Calcular IMC",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
