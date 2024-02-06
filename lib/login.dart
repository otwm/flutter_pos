import 'package:flutter/material.dart';
import 'package:flutter_pos/form_check.dart';

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
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
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
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) return '아이디를 입력하여 주십시오.';
                  if (!value.isValidId) return '올바른 아이디를 입력하여 주십시오.';
                  return null;
                },
                controller: _idController,
                decoration: const InputDecoration(labelText: 'id'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) return '패스워드를 입력하여 주십시오.';
                  if (!value.isValidPassword) return '올바른 패스워드를 입력하여 주십시오.';
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(labelText: 'password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: login
                  }
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
