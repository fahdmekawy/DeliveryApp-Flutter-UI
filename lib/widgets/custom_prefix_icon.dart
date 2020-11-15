import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class CustomPrefixIcon extends StatelessWidget {
  const CustomPrefixIcon({
    Key key,
    this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIcon,
      height: getProportionateScreenWidth(10),
    );
  }
}
