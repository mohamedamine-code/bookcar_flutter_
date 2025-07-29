import 'package:book_car/componet/MyBox.dart';
import 'package:book_car/componet/MyContainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List MyIcons=[
      Icons.directions_car,
      Icons.motorcycle,
      Icons.directions_bike,
      Icons.fire_truck,
      Icons.directions_bus,
    ];
    List Mydata=[
      'Taxie',
      'moto',
      'bike',
      'firetruck',
      'bus',
    ];



    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 231, 231),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // child: Image.asset(""),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Welocme !",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Select your car",
                              style: TextStyle(
                                fontSize: 13,
                                color: const Color.fromARGB(127, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(157, 208, 205, 205),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(child: Icon(Icons.notifications)),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: MyIcons.length,
                    itemBuilder: (contxt,index){
                    return Mycontainer(MyIcon: MyIcons[index], data: Mydata[index]);
                  }),
                ),
            
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context,index){
                    return MyBox();
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
