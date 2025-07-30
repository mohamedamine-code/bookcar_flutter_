import 'package:flutter/material.dart';

// ignore: must_be_immutable
class mybox extends StatelessWidget {
  String price;
  String cars;
  String name;
  String namecar;
  String time;
  String percent;
  final VoidCallback onPressed;

  mybox({
    required this.onPressed,
    required this.percent,
    required this.cars,
    required this.namecar,
    required this.name,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(percent),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 228, 219),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(child: Text(price ,style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(cars,height: 200,width: 300,),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.88,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 172, 145, 46),
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(namecar, style: TextStyle(fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Icon(Icons.lock_clock, size: 16),
                                SizedBox(width: 4),
                                Text(time),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            onPressed();
                          },
                          child: Text("Veiw detailes", style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}