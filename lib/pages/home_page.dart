// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruits_ui/pages/fuit_page.dart';
import 'package:fruits_ui/pages/popular.dart';

final tabs = [
  'Avocado',
  'Grapes',
  'Green Apple',
  'Lemon',
  'Orange',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.grey,
                          )),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 15),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                  SizedBox(
                    child: TabNav(
                      tabs: tabs,
                    ),
                  ),
                  SizedBox(height: 20),
                  PopularFruits(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
