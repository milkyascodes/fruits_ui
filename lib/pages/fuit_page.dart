// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';

class TabNav extends StatelessWidget {
  var tabs;
  TabNav({Key? key, this.tabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        TabBar(
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
        SizedBox(
          height: 300,
          child: TabBarView(
            children: [
              _buildFoodCard(
                  'assets/avocado.png',
                  '\$18.78',
                  'Big single avocado fresh imported fruits from the Mexican Avocado collection',
                  '0xFF57874E'),
              _buildFoodCard(
                  'assets/grapes.png',
                  '\$10.78',
                  'Big single avocado fresh imported fruits from the Mexican Avocado collection',
                  '0xFF8FC03A'),
              _buildFoodCard(
                  'assets/lemon.png',
                  '\$18.78',
                  'Big single avocado fresh imported fruits from the Mexican Avocado collection',
                  '0xFF57874E'),
              _buildFoodCard(
                  'assets/lemons.png',
                  '\$10.78',
                  'Big single avocado fresh imported fruits from the Mexican Avocado collection',
                  '0xFF8FC03A'),
              _buildFoodCard(
                  'assets/orange.png',
                  '\$10.78',
                  'Big single avocado fresh imported fruits from the Mexican Avocado collection',
                  '0xFF8FC03A'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFoodCard(
      String imgPath, String price, String desc, String cardColor) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
          decoration: BoxDecoration(
              color: Color(int.parse(cardColor)),
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(children: [
            SizedBox(height: 15.0),
            Image.asset(imgPath, fit: BoxFit.cover, height: 100.0),
            SizedBox(height: 10.0),
            Text(
              price,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Text(desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.white,
                      fontSize: 15.0)),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 30.0,
              width: 125.0,
              decoration: BoxDecoration(
                  color: Color(0xFF89AC83),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style:
                      TextStyle(fontFamily: 'Quicksand', color: Colors.white),
                ),
              ),
            )
          ])),
    );
  }
}
