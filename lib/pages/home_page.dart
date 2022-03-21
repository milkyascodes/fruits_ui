// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final tabs = [
    'Avocado',
    'Grapes',
    'Green Apple',
    'Lemon',
    'Orange',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          body: SafeArea(
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
                Expanded(
                  child: TabNav(
                    tabs: tabs,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class TabNav extends StatelessWidget {
  var tabs;
  TabNav({Key? key, this.tabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.green,
              labelStyle: TextStyle(fontSize: 18),
              tabs: [
                for (final tab in tabs)
                  FittedBox(
                    child: Tab(
                      text: tab,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Text(tab),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
