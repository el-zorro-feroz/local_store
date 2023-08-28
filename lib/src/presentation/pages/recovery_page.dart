import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RecoveryPage extends StatelessWidget {
  const RecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dash-Inside',
                  style: textTheme.displaySmall,
                ),
                Text(
                  'Dash-Inside',
                  style: textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
