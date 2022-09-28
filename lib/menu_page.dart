// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'order_page.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            welcomeText(),
            userNameWidget(),
            coffeeBody(),
          ],
        ),
      ),
    );
  }
  Padding welcomeText() {
    return const Padding(
        padding: EdgeInsets.all(5),
        child: Text(
          "Welcome!",
          style: TextStyle(color: Colors.grey),
        ));
  }
  Flexible coffeeBody() {
    return Flexible(
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
              ),
              margin: EdgeInsets.zero,
              color: Colors.blueGrey.shade700,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Select Your Coffee',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    Flexible(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          bulidItem(
                              image: "images/coffee.png", name: "coffee1"),
                          bulidItem(
                              image: "images/coffee2.png", name: "coffee2"),
                          bulidItem(
                              image: "images/coffee.png", name: "coffee3"),
                          bulidItem(
                              image: "images/coffee.png", name: "coffee4"),
                          bulidItem(
                              image: "images/coffee.png", name: "coffee5"),
                          bulidItem(
                              image: "images/coffee.png", name: "coffee6"),
                        ],
                      ),
                    ),
                  ]),
            ),
          );
  }

  Padding userNameWidget() {
    return const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Alex",
                  style: TextStyle(color: Colors.black, fontSize: 20)));
  }



  Widget bulidItem({required String image, required String name}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OrderPage(
                      coffeeImage: image,
                      coffeeName: name,
                    )));
      },
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        margin:const EdgeInsets.all(15),
          color: Colors.white,
          child: Column(children: <Widget>[
            Expanded(flex: 3, child: Image.asset(image)),
            Expanded(
                flex: 1,
                child: Text(name, style: const TextStyle(color: Colors.black)))
          ])),
    );
  }
}
