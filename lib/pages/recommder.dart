import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Recommder extends StatelessWidget {
  final String namecar;
  final String path;

  const Recommder({super.key, required this.namecar, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(161, 255, 193, 7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Name Car : ${namecar}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(path),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      "Fill the flides to continue",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Id-Card",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        FontAwesomeIcons.idCard,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        FontAwesomeIcons.inbox,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        FontAwesomeIcons.key,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),

                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Confirmed Demande'),
                            content: Text(
                              "Your demande is confirmed thnaks for your patient",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("okey"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Confirme",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
