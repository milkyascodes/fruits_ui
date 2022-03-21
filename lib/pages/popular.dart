// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:fruits_ui/pages/home_page.dart';

import '../my_widgets.dart';

var fruits = {
  {
    'text': 'Avocados',
    'price': '18.78',
    'img': 'assets/avocado.png',
  },
  {
    'text': 'Grapes',
    'price': '10.78',
    'img': 'assets/grapes.png',
  },
  {
    'text': 'Green Apple',
    'price': '18.78',
    'img': 'assets/lemon.png',
  },
  {
    'text': 'Lemon',
    'price': '10.78',
    'img': 'assets/lemons.png',
  },
  {
    'text': 'Orange',
    'price': '9.78',
    'img': 'assets/orange.png',
  },
};

class PopularFruits extends StatelessWidget {
  const PopularFruits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextBuilder(
          heading: 'Popular',
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (var fruit in fruits)
                Container(
                  margin: EdgeInsets.all(5),
                  width: 210,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(40, 64, 255, 124),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Image.asset(
                          fruit['img'].toString(),
                          height: 70,
                        ),
                      ),
                      Text(
                        fruit['text'].toString(),
                        style: TextStyle(
                            color: Color.fromARGB(255, 122, 150, 123)),
                      ),
                      TextBuilder(heading: ' \$ ' + fruit['price'].toString()),
                      SizedBox()
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
