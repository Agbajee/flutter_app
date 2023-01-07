// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/home.dart';

class BizCard extends StatelessWidget {
  const BizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 10,
        backgroundColor: Color(0xFF37474F),
        leading: Icon(
          Icons.menu_sharp,
          color: Colors.white,
          size: 40,
        ),
        title: Container(
          padding: EdgeInsets.all(10.0),
          child: Text(appTitles,
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.w600
              )
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF37474F),
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => _getMessage(context),
                icon: Icon(Icons.home),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => _getMessage(context),
                icon: Icon(Icons.wallet),
              ),
              label: "Wallet")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getMessage(context),
        backgroundColor: Color(0xFF2e7d32),
        elevation: 15,
        child: Icon(
          Icons.add,
          size: 50.0,
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              _getCard(),
              _getAvatar(),
            ],
          )),
    );
  }

  Container _getCard() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 100,
            color: Color(0xFF37474F),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            width: 300,
            height: 200,
            color: Color(0xFF62727b),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'AGBAJE AYOMIDE',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    'Web And Application Developer',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )
                ]),
          )
        ]),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.fromLTRB(0, 250.0, 180.0, 0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 41, 41, 41),
        // color: Color(0xFF2e7d32),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Color(0xFF62727b),
          width: 7,
        ),
        image: DecorationImage(
          image: NetworkImage(
              "https://icons.veryicon.com/png/o/miscellaneous/linear-icon-20/people-28.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  SnackBar _getMessage(context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text('button is working'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return snackBar;
  }
}
