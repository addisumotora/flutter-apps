import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final password =  TextEditingController();
   final userName = TextEditingController();
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/logo-raywenderlich.png'),
          width: 250,
          height: 250,
          fit: BoxFit.cover,
        ),
        TextField(
          controller: userName,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.login),
              hintText: 'user name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
        TextField(
          obscureText: true,
          controller: password,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.password),
              hintText: 'password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
        ElevatedButton(
          onPressed: () {
            final name = userName.text;
            final passwordXt = password.text;
            print(name +  passwordXt);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.green)
          ),
          child: const Text('Login'),
        )
      ],
    ));
  }
}
