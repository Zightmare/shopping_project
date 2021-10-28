import 'package:flutter/material.dart';

import '/model/Person.dart';

class Home extends StatelessWidget {
  var myPersons = [
    Person(id: "iutrireou", name: "ali", height: 55.4, date: DateTime.now()),
    Person(id: "8098", name: "ahmed", height: 55.4, date: DateTime.now()),
    Person(
        id: "iut98989reou", name: "noor", height: 55.4, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Person Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: myPersons
              .map(
                (item) => Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 8,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Colors.orange)),
                          child: Text(item.id ?? "none"),
                        ),
                        Column(
                          children: [
                            Text(item.name ?? "none"),
                            Text(item.height?.toString() ?? "none"),
                            Text(item.date?.toString() ?? "none"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
