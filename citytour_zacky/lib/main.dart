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
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Tour'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(width: 16,height: 16,),
            Row(
              children: [
                const SizedBox(width: 16,height: 16,),
                Image.network(
                  'https://picsum.photos/id/162/300/200',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 300,
                ),
                const SizedBox(width: 16,height: 16,),
                Image.network(
                    'https://picsum.photos/id/164/300/200',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 300,
                ),
                const SizedBox(width: 16,height: 16,),
                Image.network(
                  'https://picsum.photos/id/174/300/200',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}