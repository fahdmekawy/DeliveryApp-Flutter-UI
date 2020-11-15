import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CategoriesCard extends StatelessWidget {
  final String image, title;
  final Color color;

  const CategoriesCard({
    Key key,
    this.image,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(14)),
            child: Center(
              child: SvgPicture.asset(
                image,
                width: 50,
                height: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: kTextColor),
          )
        ],
      ),
    );
  }
}
