import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_homepage.dart';
import 'states/my_app_state.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: Builder(builder: (context) {
        return MaterialApp(
          title: Provider.of<MyAppState>(context).current.asLowerCase,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme:
                ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          ),
          home: MyHomePage(title: 'Flutter Demo Homie Page'),
        );
      }),
    );
  }
}
