import 'package:flutter/material.dart';
import '../constants.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool enable;
  const TitleWidget({
    Key key,
    this.title,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "PoppinsBold",
              color: kTextColor),
        ),
        Spacer(),
        enable
            ? Text(
                "See all",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PoppinsBold",
                    color: kgreyColor),
              )
            : SizedBox(),
      ],
    );
  }
}
