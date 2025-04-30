import 'package:flutter/material.dart';

void main() {
  runApp(const DulceriaApp());
}

class DulceriaApp extends StatelessWidget {
  const DulceriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA8DB73), Color(0xFF144E1B)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.menu, size: 30, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/Miguel-Rios1094/DulceriaVero_imagenes_app_flutter/refs/heads/main/Vero(1).png',
                    height: 150,
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Iniciar Sesion',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cursive',
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFE6E6E6),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ingrese su correo',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFE6E6E6),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ingrese su contraseña',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'iniciar sesion',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Cursive',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row( // Usamos un Row para colocar los textos uno al lado del otro
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacio entre los textos
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'has olvidado tu',
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Text(
                      'contraseña?',
                      style: TextStyle(
                        color: Colors.cyan,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Crear',
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Text(
                      'Cuenta',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}