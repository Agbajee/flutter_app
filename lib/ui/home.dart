import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,

      ),

    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text(
        "Hello Flutter Wrold",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 32,
          color: Color.fromARGB(255, 165, 255, 153),
          fontWeight: FontWeight.w900,
        ),
      )),
    );
  }
}
