import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // ===============================================================
                // DESAFIO 1 (3 PONTOS)
                // FOTO DE PERFIL
                // ===============================================================
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://github.com/identicons/flutter.png',
                  ),
                ),

                const SizedBox(height: 15),

                // ===============================================================
                // DESAFIO 2 (3 PONTOS)
                // ESTILIZAÇÃO E BIOGRAFIA
                // ===============================================================

                const Text(
                  'Nome Completo do Aluno',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const Divider(
                  color: Colors.black26,
                  height: 30,
                ),

                // ===============================================================
                // DESAFIO 3 (3 PONTOS)
                // ALINHAMENTO DE SKILLS (ROW)
                // ===============================================================
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(
                      label: Text('Dart'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Flutter'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Git'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
