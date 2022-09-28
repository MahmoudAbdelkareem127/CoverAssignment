// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'menu_page.dart';

void main() {runApp(CoverApp());}

class CoverApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MenuPage() ,



    );
  }
}
