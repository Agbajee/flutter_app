import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: const IconButton(
          icon: Icon(
            Icons.home,
            size: 28,
            color: Colors.deepOrange,
          ), 
          onPressed:null,
        ),
        title: const Text(
          'Flur',
          style: TextStyle(
            fontSize: 28,
            color: Colors.deepOrange,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint('Notification'),
              icon: const Icon(
                Icons.notifications,
                color: Colors.deepOrange,
                size: 28,
              ))
        ],
      ),
      body: const Material(
        color: Color(0xFFFFFFFF),
        child: Center(
            child: Text(
          'Get Started',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 24,
            // fontFamily: FontFamily.halventica,
            color: Colors.deepOrange,
            fontWeight: FontWeight.w700,
          ),
        )),
      ),
    );
  }
}
