// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

var appTitles = "Bizcard";

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 1,
          backgroundColor: const Color(0xFFFFFFFF),
          leading: const IconButton(
            icon: Icon(
              Icons.fullscreen,
              size: 28,
              color: Colors.deepOrange,
            ),
            onPressed: null,
          ),
          title: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              "https://icons.veryicon.com/png/o/miscellaneous/linear-icon-20/people-28.png",
              width: 20,
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () => debugPrint('Make Phone call'),
          elevation: 10,
          child: Icon(Icons.phone),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
                color: Colors.deepOrange,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                size: 28,
                color: Colors.deepOrange,
              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                size: 28,
                color: Colors.deepOrange,
              ),
              label: 'Wallet',
            ),
          ],
          onTap: (int index) => debugPrint('Tapped on: $index'),
          backgroundColor: Color.fromARGB(255, 211, 211, 211),
          unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w900,
              height: 1.5),
          selectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          fixedColor: Colors.deepOrange,
        ),
        body: Container(
            alignment: Alignment.center,
            color: const Color(0xFFFFFFFF),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: const Text('Welcome Back',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w700,
                        )),
                    onTap: () => debugPrint('inkwell tap'),
                  ),
                  const CustomButton(),
                ])));
  }
}

class AddNewButton extends StatelessWidget {
  const AddNewButton({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final snackBar = SnackBar(
          backgroundColor: Colors.green,
          content: Text('logged in successfully'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      backgroundColor: Color(0xFF2e7d32),
      elevation: 15,
      child: Icon(
        Icons.add,
        size: 50.0,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          backgroundColor: Colors.green,
          content: Text('logged in successfully'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(1.0, 20.0, 1.0, 10.0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 211, 211),
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: Color.fromARGB(255, 254, 254, 254),
            width: 2,
          ),
        ),
        child: Text('Sign In',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.deepOrange,
            )),
      ),
    );
  }
}
