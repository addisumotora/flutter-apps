import 'package:flutter/material.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/logo-raywenderlich.png'),
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
          Text('Initializing...')
        ],
      ),
    );
  }

  static MaterialPage page() {
    return const MaterialPage(
      name: 'splashPath',
      key: ValueKey('splashPath'),
      child: SplashScreen(),
    );
  }
}
