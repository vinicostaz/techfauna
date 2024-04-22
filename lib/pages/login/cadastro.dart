import 'package:flutter/material.dart';
import 'home_page.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return scaffoldCadastro();
  }

  Widget scaffoldCadastro() {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(170, 213, 118, 1),
      body: bodyCadastro(),
    );
  }

  Widget bodyCadastro() {
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
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 48, bottom: 8),
            height: 625,
            width: (400),
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[100]),
            child: Column(
              children: [
                const Text("Cadastrar", style: TextStyle(fontSize: 32)),
                const SizedBox(height: 32),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Nome'),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))))),
                  const SizedBox(height: 8),
                  Text('Sobrenome'),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))))),
                  const SizedBox(height: 8),
                  Text('E-mail'),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))))),
                  const SizedBox(height: 8),
                  Text('Senha'),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                      obscureText: true),
                  const SizedBox(height: 8),
                  Text('Confirme a sua senha'),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                      obscureText: true),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 50),
                              backgroundColor: Colors.black),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text("Voltar",
                              style: TextStyle(color: Colors.white))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(150, 50),
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text("Cadastrar",
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  const SizedBox(height: 8)
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
