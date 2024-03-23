import 'package:flutter/material.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static MaterialPage page() {
    return const MaterialPage(
      name: "loginPath",
      key: ValueKey("loginPath"),
      child: LoginScreen(),
    );
  }

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final password = TextEditingController();
    final userName = TextEditingController();
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('assets/rw_logo.png'),
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: userName,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.login),
                    hintText: 'user name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  final name = userName.text;
                  final passwordXt = password.text;
                  Provider.of<AppStateManager>(context, listen: false)
                      .login(name, passwordXt);
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0)),
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )))),
    );
  }
}
