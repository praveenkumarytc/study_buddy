// import 'dart:html';

// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, sort_child_properties_last, avoid_print, unused_local_variable, non_constant_identifier_names

// import 'dart:ffi';

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/screens/login.dart';
import 'package:study_buddy/services/firebase_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:study_buddy/widgets/navbar.dart';
// import 'package:study_buddy/widgets/cards.dart'; unused now

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final database = FirebaseDatabase.instance.ref();
  String displayText = 'Signals Loading...';
  String displayText1 = 'Signals Loading...';

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    database.child("coinPrice");
  }

  @override
  Widget build(BuildContext context) {
    final coinPriceRef = database.child('coinPrice/').onValue.listen((event) {
      final Object? Coin = event.snapshot.value;
      setState(() {
        displayText = 'Buy Price: $Coin';
        displayText1 = 'Sell Price: $Coin';
      });
    });
    return Scaffold(
      appBar: AppBar(title: Text('Crypto Buddy'), centerTitle: true),
      drawer: NavDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      displayText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      displayText1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Buy Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "Sell Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Buy Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "Sell Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Buy Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "Sell Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Buy Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "Sell Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.network(
                      'https://bitcoin.org/img/icons/opengraph.png?1652976465',
                      cacheHeight: 50,
                      alignment: Alignment.topCenter,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Buy Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "Sell Price:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
