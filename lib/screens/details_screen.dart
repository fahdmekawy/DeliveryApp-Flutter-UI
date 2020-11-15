import 'package:delivery_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Expanded(
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.",
                      style: TextStyle(
                          fontSize: 13,
                          color: kTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "10 Ingredients",
                          style: TextStyle(color: kgreyColor, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/images/onion.jpeg",
                        fit: BoxFit.cover,
                        height: 200.0,
                        width: 150.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        5, size.height - 50, size.width / 5, size.height - 50);
    path.lineTo(size.width - 80, size.height - 50);
    path.quadraticBezierTo(
        size.width - 10, size.height - 50, size.width, size.height - 90);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
