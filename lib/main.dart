import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Image'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text("Image from asset folder"),
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/it_wala.jpg',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 50),
              const Text("Image from network"),
              const SizedBox(height: 30),
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 50),
              const Text("Placeholder image"),
              const SizedBox(height: 30),
              FadeInImage.assetNetwork(
                  height: 200,
                  width: 200,
                  placeholder: 'assets/images/it_wala.jpg',
                  image:
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
