import 'package:book_car/componet/MyBox.dart';
import 'package:book_car/componet/MyContainer.dart';
import 'package:book_car/pages/detailes.dart';
import 'package:book_car/pages/recommder.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List nb_place = ['5', '5', '2', '5', '2', '5'];
    List state = [
      ["available", true],
      ["available", true],
      ["available", true], //state[2][0]

      ["not available", false],
      ["not available", false],
      ["not available", false],
    ];
    List price = ['\$25/h', '\$30/h', '\$40/h', '\$60/h', '\$70/h', '\$55/h'];
    List percent = ['20%', '30%', '40%', '10%', '15%', '25%'];
    List name = ['Ali', 'Sara', 'Moez', 'Rania', 'Tarek', 'Lina'];
    List namecar = [
      'Tesla Model S',
      'BMW X5',
      'Mercedes C-Class',
      'Audi A4',
      'Toyota Corolla',
      'Tesla Model S',
    ];
    List time = ['1h', '30min', '15min', '45min', '1h 30min', '2h'];
    List cars = [
      'assets/im1.png',
      'assets/im2.png',
      'assets/im5.png',
      'assets/im4.png',
      'assets/im5.png',
      'assets/im1.png',
    ];
    List MyIcons = [
      Icons.directions_car,
      Icons.motorcycle,
      Icons.directions_bike,
      Icons.fire_truck,
      Icons.directions_bus,
    ];
    List data = ['Taxi', 'motorcycle', 'bike', 'Fire Track', 'bus'];
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: double.infinity,
          color: const Color.fromARGB(255, 231, 230, 226),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 90,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                      //color: Colors.amber,
                      //color: const Color.fromARGB(255, 255, 255, 255),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Text(" "),
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text("Select Your Car"),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 60,
                            height: 60,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 245, 245),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Search....",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: MyIcons.length,
                      itemBuilder: (context, index) {
                        return Mycontainer(
                          MyIcons: MyIcons[index],
                          data: data[index],
                        );
                      },
                    ),
                  ),
                  // SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 350,
                    width: double.infinity,

                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: namecar.length,
                      itemBuilder: (context, index) {
                        return mybox(
                          price: price[index],
                          cars: cars[index],
                          name: name[index],
                          namecar: namecar[index],
                          time: time[index],
                          percent: percent[index],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detailes(
                                  nameCar: name[index],
                                  path: cars[index],
                                  DriverCar: namecar[index],
                                  nb_place: nb_place[index],
                                  smooth: percent[index],
                                  price: price[index],
                                  state: state[index][0],
                                  nameButonn: state[index][1]
                                      ? "Book Now!"
                                      : "Try next Time !",
                                  colorButton: state[index][1]
                                      ? const Color.fromARGB(255, 27, 94, 32)
                                      : const Color.fromRGBO(183, 28, 28, 1),
                                  onTap: () {
                                    if (state[index][1] == true) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>Recommder(namecar: name[index], path: cars[index]),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text("🤬 Try after 1 hours !",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
