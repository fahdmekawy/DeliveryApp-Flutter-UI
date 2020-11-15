import 'package:delivery_app/constants.dart';
import 'package:delivery_app/helper/categories_data.dart';
import 'package:delivery_app/helper/popular_product_data.dart';
import 'package:delivery_app/model/categories_model.dart';
import 'package:delivery_app/model/popular_products_model.dart';
import 'package:delivery_app/size_config.dart';
import 'package:delivery_app/widgets/custom_prefix_icon.dart';
import 'package:delivery_app/widgets/popular_product_card.dart';
import 'package:delivery_app/widgets/recommended_card.dart';
import 'package:delivery_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/categories_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<PopularProductModel> products = new List<PopularProductModel>();

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    products = getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppbarBuilder(context),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleWidget(
                      title: "Browse Categories",
                      enable: true,
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => CategoriesCard(
                          image: categories[index].imageUrl,
                          title: categories[index].categoryName,
                          color: categories[index].color,
                        ),
                      ),
                    ),
                    TitleWidget(
                      title: "Popular Products",
                      enable: false,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (context, index) => PopularProductCard(
                          img: products[index].img,
                          title: products[index].title,
                          desc: products[index].description,
                          fav: products[index].fav,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TitleWidget(
                      title: "Recommended",
                      enable: false,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RecommendedCard(),
                          SizedBox(
                            width: 10,
                          ),
                          RecommendedCard(),
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 10, right: 10),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomPaint(
                                size: Size(
                                    MediaQuery.of(context).size.width * 0.40,
                                    80),
                                painter: LeftPartBNBCustomPainter(),
                              ),
                              CustomPaint(
                                size: Size(
                                    MediaQuery.of(context).size.width * 0.40,
                                    80),
                                painter: RightPartBNBCustomPainter(),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 20,
                            bottom: 20,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/heart.svg",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/fahd.jpg"),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom: 20,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/home.svg",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/shop.svg",
                                  width: 30,
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      heightFactor: 1,
                      child: Container(
                        width: 65,
                        height: 65,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xFF5117AC),
                          child: SvgPicture.asset(
                            "assets/icons/Path 181.svg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  PreferredSize AppbarBuilder(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 80),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.grey[200], spreadRadius: 1, blurRadius: 15)
        ]),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 35,
                child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 3),
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: kSecondryColor,
                      ),
                      hintStyle: TextStyle(
                          color: Colors.grey[200], fontWeight: FontWeight.bold),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey[200]),
                      ),
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Start",
                style: TextStyle(
                    fontSize: 25,
                    color: kSecondryColor,
                    fontFamily: "PoppinsBold",
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              SvgPicture.asset(
                "assets/icons/notif.svg",
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                "assets/icons/sale.svg",
                height: 30,
                width: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LeftPartBNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;
    Path path = Path()..moveTo(size.width, 0);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.3);

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(0, 0, size.width * 0.2, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RightPartBNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;
    Path path = Path()..moveTo(0, 0);
    path.lineTo(size.width * 0.8, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.4);
    path.quadraticBezierTo(
        size.width, size.height, size.width * 0.8, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.5, 0, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
