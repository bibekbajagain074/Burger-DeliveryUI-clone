import 'package:burger/HomePage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Container(
                margin: EdgeInsets.only(bottom: 30, top: 130),
                child: Column(
                  children: [
                    Text(
                      "Get The Fastest Delivery",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    Text("Food For You.",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                margin: EdgeInsets.only(bottom: 35, top: 15),
                child: Image.asset(
                  "images/1.png",
                  height: 300,
                  color: Colors.pink,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 20),
                width: MediaQuery.of(context).size.width / 1.15,
                height: MediaQuery.of(context).size.height / 13,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
