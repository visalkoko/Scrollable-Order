import 'package:flutter/material.dart';
import 'package:testing_project/Foods/FoodModel.dart';

class FoodList extends StatelessWidget {
  List<FoodModel> foods = [
    FoodModel('iOS device', 'Apple Product is good', 'images/apple.png', 20),
    FoodModel(
        'Android device', 'Android is very nice', 'images/android.png', 50),
    FoodModel('iOS device', 'Apple Product is good', 'images/apple.png', 20),
    FoodModel('iOS device', 'Apple Product is good', 'images/apple.png', 20),
    FoodModel('iOS device', 'Apple Product is good', 'images/apple.png', 20),
    FoodModel('iOS device', 'Apple Product is good', 'images/apple.png', 20),
    FoodModel(
        'Android device', 'Android is very nice', 'images/android.png', 50),
    FoodModel(
        'Android device', 'Android is very nice', 'images/android.png', 50),
    FoodModel(
        'Android device', 'Android is very nice', 'images/android.png', 50),
    FoodModel(
        'Android device', 'Android is very nice', 'images/android.png', 50),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Food Order',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  'App',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: ListView.separated(
                    itemCount: foods.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                foods[index].pic,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    foods[index].name,
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    foods[index].description,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black54),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: 60,
                              child: Text(
                                '\$${foods[index].price}',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, int index) => Divider(),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
