import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_project/cartModel.dart';

class ProductList extends StatelessWidget {
  String name = "Coupon";
  int _counter = 0;

  final myproducts = List<String>.generate(20, (i) {
    return 'Products $i';
  });

  List<String> listName = ['Coconut', 'Apple', 'Orange', 'Juice'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: myproducts.length,
          itemBuilder: (context, int index) {
            return ListTile(
              title: Text(myproducts[index]),
              onTap: () {
                // code
                Provider.of<CartModel>(context, listen: false)
                    .add(myproducts[index]);
                SnackBar s = SnackBar(
                  content: Text(myproducts[index] + " are added"),
                );
                Scaffold.of(context).showSnackBar(s);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
