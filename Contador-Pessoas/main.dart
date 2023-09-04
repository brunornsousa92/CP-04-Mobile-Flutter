import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tela_inicial();
  }
}

class Tela_inicial extends StatefulWidget {
  const Tela_inicial({Key? key}) : super(key: key);

  @override
  State<Tela_inicial> createState() => _Tela_inicialState();
}

class _Tela_inicialState extends State<Tela_inicial> {
  int _pessoa = 0;

  _statusContador(String title) {
    setState(() {
      if (title == "+")
        _pessoa++;
      else if (_pessoa > 0) _pessoa--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contador de Pessoas"),
          centerTitle: true,
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _contador(),
          SizedBox(height: 16),
          _button("+"),
          SizedBox(height: 36),
          _button("-"),
        ],
      ),
    );
  }

  _contador() {
    return Text(
      '$_pessoa',
      style: TextStyle(
        color: Colors.red,
        fontSize: 144,
      ),
    );
  }

  _button(title) {
    return Container(
      width: 200,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: title == "+" ? Colors.green : Colors.red,
        ),
        onPressed: () {
          _statusContador(title);
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
