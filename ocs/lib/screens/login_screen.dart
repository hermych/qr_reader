import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.android,
                size: 100,
              ),
              const SizedBox(height: 75),
              // Hello again!
              Text(
                'OPEN COMB SYSTEMS',
                style: GoogleFonts.bebasNeue(fontSize: 36, color: Colors.blue),
              ),
              const SizedBox(height: 5),
              const Text(
                'Soluciones inteligentes',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'para un mundo mejor',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingrese su usuario'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ingrese su contraseña'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                      child: Text(
                    'Iniciar Sesion',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
              const SizedBox(height: 25),
              // not a member? register now
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '¿Algun problema?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Comunicate aqui',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
