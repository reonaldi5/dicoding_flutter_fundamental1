import 'package:flutter/material.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  static const routeName = '/detail';

  final Restaurant restaurant;

  const Detail({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Restaurant"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            children: [
              Image.network(restaurant.pictureId),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(restaurant.name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text(
                    restaurant.rating.toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Text(
                restaurant.city,
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text('Description: '),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Text(restaurant.description),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text('Menu: '),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: restaurant.menus.foods.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                              '- ' + restaurant.menus.foods[index].name);
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: restaurant.menus.drinks.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                              '- ' + restaurant.menus.drinks[index].name);
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
