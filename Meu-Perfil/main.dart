import 'package:flutter/material.dart';

void main() {
  runApp(AppPerfil());
}

class AppPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3a2922),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Informações Pessoais",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Image.network(
                    'https://avatars.githubusercontent.com/u/17336588?v=4',
                    width: 230,
                    height: 230,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Perfil Profissional:",
                  style: TextStyle(
                    color: Color(0xffb2816a),
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Bruno Roberto",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Idade:",
                  style: TextStyle(
                    color: Color(0xffb2816a),
                    fontSize: 18,
                  ),
                ),
                Text(
                  "31 anos",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Formação:",
                  style: TextStyle(
                    color: Color(0xffb2816a),
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Sistemas para Internet - FIAP",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Técnico em Informática - Etec Lauro Gomes",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Experiência:",
                  style: TextStyle(
                    color: Color(0xffb2816a),
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Analista de T.I. - ABRAFOTON",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Analista de T.I. - ABRAFOR",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Analista Técnico Pleno - ION Tecnologia",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Estagiário de Suporte Técnico - Puket",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
