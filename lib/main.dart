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

            // ===============================================================
            // DESAFIO 5 (3 PONTOS)
            // DECORAÇÃO E GRADIENTE
            // ===============================================================
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                ),
              ],

              // Gradiente com duas cores
              gradient: const LinearGradient(
                colors: [
                  Colors.indigo,
                  Colors.blueAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

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
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiuok3pXxx7cZL1lG9eJ0WfdsmTwPv3ychvXiu7F3TFEwwYh0PogLqosZn&s=10',
                  ),
                ),

                const SizedBox(height: 15),

                // ===============================================================
                // DESAFIO 2 (3 PONTOS)
                // ESTILIZAÇÃO E BIOGRAFIA
                // ===============================================================
                const Text(
                  'Gabrielly ferreira santos',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const Divider(
                  color: Colors.white38,
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

                // ===============================================================
                // DESAFIO 4 (3 PONTOS)
                // COMPILAÇÃO E ESTRUTURA
                // ===============================================================
                // Código estruturado corretamente e sem erros de sintaxe.
                // O aplicativo deve compilar e executar normalmente.

              ],
            ),
          ),
        ),
      ),
    );
  }
}
