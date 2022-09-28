// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String coffeeImage;
  final String coffeeName;
  const OrderPage({Key? key,required this.coffeeImage, required this.coffeeName}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getOrderImage(widget.coffeeImage),
            gerOrderName(widget.coffeeName),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Order",style: TextStyle(color: Colors.black),),
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
  Widget gerOrderName(String orderName){
    return
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(orderName)) ;
  }

  Widget getOrderImage(String orderImage){
    return
      SizedBox(
        height: 250,
        width: 500,
        child: Card(
          margin: const EdgeInsets.all(20),
          color: Colors.white70,
          child: Image.asset(orderImage),
        ),
      );
  }

}
