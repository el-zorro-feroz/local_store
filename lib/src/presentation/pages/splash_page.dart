import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.amber[700],
          strokeWidth: 1.0,
        ),
      ),
    );
  }
}

class Qw extends StatelessWidget {
  const Qw({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => null,
      child: Text(''),
      
    );
  }
}