import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Impeller iOS Asset Bug',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const colorFilter = ColorFilter.mode(Colors.grey, BlendMode.color);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Impeller iOS Asset Bug'),
      ),
      body: Center(
        child: Column(
          children: [
            ClipOval(
              child: ColorFiltered(
                colorFilter: colorFilter,
                child: Container(
                  color: Colors.green,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(12.0)),
            ClipOval(
              child: ColorFiltered(
                colorFilter: colorFilter,
                child: Image.asset('assets/guest_avatar_logo.png'),
              ),
            ),
            const Padding(padding: EdgeInsets.all(12.0)),
            ClipOval(
              child: ColorFiltered(
                colorFilter: colorFilter,
                child: Image.network(
                    'https://www.dealdoktor.de/app/uploads/2024/07/Bosch_Professinal_Uni-300x300.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
