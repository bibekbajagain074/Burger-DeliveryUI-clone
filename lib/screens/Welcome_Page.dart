import 'package:burger/utils/styles/custom_text_style.dart';
import 'package:burger/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

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
                margin: const EdgeInsets.only(bottom: 30, top: 130),
                child: Column(
                  children: const [
                    Text("Get The Fastest Delivery",
                        style: CustomTextStyle.smallBold),
                    Text("Food For You.", style: CustomTextStyle.smallBold),
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
            CustomButton(
              buttonText: "Get Started",
              buttonColor: Colors.red,
              onButtonClick: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));


              },
            )
          ],
        ),
      ),
    );
  }
}
