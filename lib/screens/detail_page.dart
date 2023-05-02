import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/burger_data.dart';
import 'add_cart.dart';

class DetailPage extends StatelessWidget {
  final Map foodDetail;
  DetailPage({Key? key, required this.foodDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25, left: 20),
                  height: 55,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(

                  foodDetail['image'],
                  

                  ))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      CupertinoIcons.minus,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("1",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      CupertinoIcons.add,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 2),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          menuList[0]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    menuList[2]['subtitle'],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Double Patty,cheese slice,green lettuce,bell pepper,tomato,onioninfuses hand-pulled espresso with rich chocolate sauce, sweet peppermint, topped with a cloud of whipped cream.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),
                            ]),
                        child: Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ratings",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "4+",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => MyCart()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
