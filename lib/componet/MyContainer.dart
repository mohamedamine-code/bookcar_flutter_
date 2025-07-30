import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mycontainer extends StatelessWidget {
  IconData MyIcons;
  String data;
Mycontainer({required this.MyIcons , required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          
        ),
        child: Column(
          children: [
            Icon(MyIcons),
            Text(data)

          ],
        ),
      ),
    );
  }
}