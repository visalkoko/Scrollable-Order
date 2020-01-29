
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_project/cartModel.dart';
class Cart extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Product Selected"),
          ),
          Consumer<CartModel>(builder: (context, cart, child) {
            return Expanded(
            child: ListView.builder(
              itemCount: cart.selectedProducts.length,
              itemBuilder: (context, int index) {
                return ListTile(
                  title: Text(cart.selectedProducts[index]),
                );
              },
            ),
          );
          },)
        ],
      ),
    );
  }
}
