import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialButtonX/materialButtonX.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButtonX(
                message: "Post",
                height: 50.0,
                width: 150.0,
                color: Colors.blueAccent,
                icon: Icons.add,
                iconSize: 30.0,
                radius: 46.0,
                onClick: () {
                  //TODO
                },
              )),
        ),
      ),
    );
  }
}
