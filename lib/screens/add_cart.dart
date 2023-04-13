import 'package:burger/widgets/burger_cart_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles/custom_text_style.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    double mqw = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: mqh,
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
            //Banner scrollable
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: SingleChildScrollView(
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
            ),

            //Cart's item listview
            Container(
              height: mqh * 0.6,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return BurgerCart();
                  }),
            ),
            Expanded(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: CustomTextStyle.smallBold,
                    ),
                    Text(
                      "100",
                      style: CustomTextStyle.smallBold,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
