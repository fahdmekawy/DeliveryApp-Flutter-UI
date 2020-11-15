import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PopularProductCard extends StatelessWidget {
  final String title, img, fav, desc;
  const PopularProductCard({
    Key key,
    this.title,
    this.img,
    this.fav,
    this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 1,
                    spreadRadius: 0.5,
                    color: kgreyColor,
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 5,
                                spreadRadius: 5,
                                color: Colors.blue.withOpacity(0.3))
                          ]),
                      child: Center(
                          child: SvgPicture.asset(
                        img,
                        width: 60,
                        height: 60,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: kTextColor, fontSize: 12),
                  ),
                  Text(
                    "\$12.58",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: SvgPicture.asset(
              fav,
              width: 25,
              height: 25,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
                width: 40,
                height: 40,
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
                  size: 25,
                )),
          )
        ],
      ),
    );
  }
}
