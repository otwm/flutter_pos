import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/food1.jpg')),
              ),
              child: const Scaffold(
                backgroundColor: Colors.transparent,
                body: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Dodo mart',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
              child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: LoginForm(),
            ),
          )),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final loginController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: loginController,
                decoration: const InputDecoration(labelText: 'id'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: loginController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(content: Text(loginController.text));
                      });
                },
                child: const Tooltip(
                  message: 'login',
                  child: Text(
                    'login',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
