import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:local_store/core/service/service.dart';
import 'package:local_store/src/presentation/pages/splash_page.dart';

@Injectable()
class App extends StatelessWidget {
  static const ColorScheme colorScheme = ColorScheme.light(
    primary: Color(0xFF000000),
  );

  App({
    super.key,
  });

  final StatelessWidget homePage = service<SplashPage>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: colorScheme,
      ),
      home: homePage,
    );
  }
}
