import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  IconData MyIcon;
  String data;
  Mycontainer({required this.MyIcon, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: [Icon(MyIcon), Text(data)]),
      ),
    );
    ;
  }
}
