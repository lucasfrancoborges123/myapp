import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'programa layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 100,
                  child: const Text('layout superior')),
            ),
             Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                     Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 0, 255, 55),
                  height: 100,
                  child: const Text('primeira coluna'),
            ),
           ),
                 Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 255, 0, 157),
                  height: 100,
                  child: const Text('segunda coluna'),
            ),
           ),
             Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 255, 115, 0),
                  height: 100,
                  child: const Text('terceira coluna',),
            ),
           )
          ],
        ),
      ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 75, 0, 238),
                  height: 100,
                  child: const Text('layout inferior')),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
