import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
           "Home Page",
           textDirection: TextDirection.ltr,
           style: TextStyle(
             fontSize: 32,
             color: Colors.white,
             fontWeight: FontWeight.w900,
           ),
        )
      ),
        
    );
  }
}
