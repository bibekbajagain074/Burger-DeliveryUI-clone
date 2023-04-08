import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 8,
              ),
              child: Row(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 23,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Your Orders",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 306,
                    height: 81,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          "images/Banner1.png",
                        )),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 306,
                    height: 81,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          "images/Banner1.png",
                        )),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
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
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Juicy Burer",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
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
                          child: Center(
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
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
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
            )
          ],
        ),
      ),
    );
  }
}
