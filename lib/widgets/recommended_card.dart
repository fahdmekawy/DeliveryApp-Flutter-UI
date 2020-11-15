import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 150,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 2,
                spreadRadius: -1,
                color: Colors.grey,
              )
            ],
          ),
          child: Row(
            children: [
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Natural",
                    style: TextStyle(
                      fontSize: 20,
                      color: kgreyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Tropical shakes",
                    style: TextStyle(
                      fontSize: 18,
                      color: kTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Made with natural juices",
                    style: TextStyle(
                      fontSize: 13,
                      color: kTextColor,
                    ),
                  ),
                  Text(
                    "\$12.58",
                    style: TextStyle(
                      fontSize: 22,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 5,
          child: SizedBox(
              height: 110,
              width: 110,
              child: SvgPicture.asset("assets/icons/juice2.svg")),
        ),
        Positioned(
            top: 15,
            right: 15,
            child: SvgPicture.asset("assets/icons/heart2.svg")),
        Positioned(
          bottom: 20,
          right: 15,
          child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        spreadRadius: -8,
                        color: Colors.grey)
                  ]),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              )),
        ),
      ],
    );
  }
}
