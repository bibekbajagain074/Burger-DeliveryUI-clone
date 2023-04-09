import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurgerCart extends StatelessWidget {
  const BurgerCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                      "images/B2.png",
                    )),
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(16)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cicken Burer",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Juicy Burer",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 16,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(48)),
                    child: const Center(
                      child: Text(
                        "SORT",
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "\$ 75.00",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      CupertinoIcons.add,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("1"),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[100],
                    child: Icon(
                      CupertinoIcons.minus,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
