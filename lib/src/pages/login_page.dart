// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
        child: Column(
          children: [
            Image.asset(
              'images/logo_oficial.png',
              height: 300.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            _userTextField(),
            const SizedBox(
              height: 15,
            ),
            _passwordTextField(),
            const SizedBox(
              height: 20.0,
            ),
            _bottonLogin(),
          ],
        ),
      )),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contrasenia',
            labelText: 'Contrasenia',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: const Text('Iniciar Sesion'),
        ),
      );
    });
  }
}
