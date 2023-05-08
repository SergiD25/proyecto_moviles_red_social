import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_red_social/pagina2.dart';

class PantallaInicioSesion extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  PantallaInicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red, // Color primario
      ),
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('RedSocial'),
            ),
            backgroundColor:
                Colors.white, // Definir color de fondo del Scaffold
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'imagenes/logo1.png', // Ruta de la imagen del logo
                      height: 100.0,
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Correo electrónico',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Contraseña',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Validar usuario y clave en la base de datos
                        String email = emailController.text;
                        String password = passwordController.text;
                        bool validUser = validarUsuario(email, password);

                        if (validUser) {
                          // Navegar a la pantalla de red social
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PantallaRedSocial(),
                            ),
                          );
                        } else {
                          // Mostrar mensaje de error
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: const Text(
                                    'Usuario o contraseña incorrectos'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  bool validarUsuario(String email, String password) {
    // Validar usuario y clave en la base de datos (simulación)
    if (email == 'usuario@ejemplo.com' && password == 'contraseña') {
      return true;
    } else {
      return false;
    }
  }
}
