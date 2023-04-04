// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/1.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Cameron",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2, left: 3),
                              child: Text(
                                "New Mexico 31134",
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.pink.withOpacity(0.2)),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.pink[400],
                    ),
                    hintText: "Search",
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.pink[200]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
