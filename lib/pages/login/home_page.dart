

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return scaffoldLogin();
  }

  Widget scaffoldLogin() {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(170, 213, 118, 1),
      body: bodyLogin(),
    );
  }

  Widget bodyLogin() {
    return Stack(
      children: [
        Image.asset(
          'assets/background.jpeg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 48, bottom: 8),
            height: 400,
            width: (400),
            decoration: BoxDecoration(border: Border.all(width: 1.0, color: Colors.black), borderRadius: BorderRadius.circular(12), color: Colors.grey[100]),
            child: Column(
              children: [
                const Text("Entrar", style: TextStyle(fontSize: 32)),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))), labelText: "E-mail")),
                    const SizedBox(height: 8),
                    TextFormField(decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))), labelText: "Senha"), obscureText: true),
                    const SizedBox(height: 8),
                    TextButton(onPressed: () {}, child: const Text("Esqueceu a senha?", style: TextStyle(color: Colors.blue))),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize:  const Size(double.maxFinite, 50), backgroundColor: Colors.black),
                      onPressed: () {}, 
                      child: const Text("Login", style: TextStyle(color: Colors.white))
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Não tem uma conta? "),
                        TextButton(onPressed: () {}, child: const Text("Cadastre-se", style: TextStyle(color: Colors.blue))),
                      ]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}