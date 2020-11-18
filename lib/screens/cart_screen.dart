import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'home_screen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppbarBuilder(context),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HomeCard(
                            title: "My Home",
                            example: "Example address",
                            card_color: Color(0xFF5117AC),
                            icon_color: Colors.white,
                            example_color: Colors.white,
                            title_color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HomeCard(
                            title: "My job",
                            example: "Example address",
                            card_color: Colors.white,
                            icon_color: Color(0xFF5117AC),
                            example_color: Colors.grey,
                            title_color: Colors.black,
                          ),
                          Spacer(),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF5117AC),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                height: 350,
                                width: 290,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 20,
                                        spreadRadius: -8,
                                        color: Colors.grey.withOpacity(0.2))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            "assets/images/big_burger.jpg"),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Big Burger Cheese",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: kTextColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Charbroiled all-beef patty, melted American cheese,"
                                        " dill pickles, onions, mustard and ketchup on a toasted seeded bun.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kTextColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 30,
                                                color: Color(0xFF5117AC),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF5117AC),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF5117AC),
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 30,
                                                color: Colors.grey[300],
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "\$20",
                                            style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF20D0C4),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -10,
                                right: -10,
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/trash.svg",
                                    color: Colors.white,
                                  ),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFF1395E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 30, top: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "SubTotal",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$85.00 usd",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      "Shipping",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Free",
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      "Total:",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFF5117AC),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$85.00 usd",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Color(0xFF5117AC),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF4A1192),
                                  Color(0xFF2CD5C4),
                                ],
                              ),
                            ),
                            height: 75,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Make a purchase",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    )
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cart",
                style: TextStyle(
                    fontSize: 25,
                    color: kSecondryColor,
                    fontFamily: "PoppinsBold",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title, example;
  final Color icon_color, title_color, example_color, card_color;

  const HomeCard({
    Key key,
    this.title,
    this.example,
    this.icon_color,
    this.title_color,
    this.example_color,
    this.card_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0xFFE2EDF2)),
        color: card_color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/home.svg",
              color: icon_color,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: title_color, fontSize: 12),
                  ),
                  Text(
                    example,
                    style: TextStyle(color: example_color, fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
