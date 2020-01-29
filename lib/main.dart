import 'package:flutter/material.dart';
import 'package:testing_project/Foods/footList.dart';
import 'package:testing_project/cart.dart';
import 'package:testing_project/cartModel.dart';
import 'package:testing_project/data/article.dart';
import 'package:testing_project/productList.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: FoodList(),
    );
  }
}
