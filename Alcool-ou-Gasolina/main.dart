import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TelaInicial();
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String resultado = "";

  void _calcular() {
    setState(() {
      double alcool = double.parse(alcoolController.text);
      double gasolina = double.parse(gasolinaController.text);

      double resultadoCalculo = alcool / gasolina;

      if (resultadoCalculo <= 0.7) {
        resultado = "Abasteça com Álcool!";
      } else {
        resultado = "Abasteça com Gasolina!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
          centerTitle: true,
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _foto(),
          _campo("Preço do Álcool", alcoolController),
          SizedBox(height: 10),
          _campo("Preço da Gasolina", gasolinaController),
          SizedBox(height: 30),
          _button(),
          SizedBox(height: 16),
          _texto(),
        ],
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://www.cartaoatacadao.com.br/documents/1210339/1215968/Como+economizar+na+hora+de+abastecer+o+carro.jpg/3e8d340c-3c47-ee47-eb3a-88c7ae98eac3?t=1596740406177',
        height: 250,
        width: 250,
      ),
    );
  }

  _campo(String title, TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: title, labelStyle: TextStyle(color: Colors.blue)),
      style: TextStyle(color: Colors.orange, fontSize: 25.0),
      controller: controller,
    );
  }

  _texto() {
    return Text(
      resultado,
      style: TextStyle(
        color: Colors.orange,
        fontSize: 28,
      ),
    );
  }

  _button() {
    return Container(
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
        ),
        onPressed: () {
          _calcular();
        },
        child: Text(
          "Calcular",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
