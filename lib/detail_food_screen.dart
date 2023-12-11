import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/all_categories_screen.dart';
import 'package:foodapp_flutter/book_table_screen.dart';
import 'package:foodapp_flutter/reviews_screen.dart';
import 'package:readmore/readmore.dart';

class DetailFoodScreen extends StatefulWidget {
  const DetailFoodScreen({super.key});

  @override
  State<DetailFoodScreen> createState() => _DetailFoodScreenState();
}

class _DetailFoodScreenState extends State<DetailFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFCF9F9),
          child: Column(
            children: <Widget>[
              Container(
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/img_detail_food.png",
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Boneless Sour and Spicy Chicken",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Nunito",
                            ),
                          ),
                          Text(
                            "Sushi Platter | Tuna (2 pcs), ",
                            style: TextStyle(
                              color: Color(0xFF939393),
                              fontSize: 13,
                              fontFamily: "Nunito",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 70,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      "assets/vectors/ic_star.svg",
                                      color: Color(0xFFDB166E),
                                      width: 10,
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/vectors/ic_star.svg",
                                      color: Color(0xFFDB166E),
                                      width: 10,
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/vectors/ic_star.svg",
                                      color: Color(0xFFDB166E),
                                      width: 10,
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/vectors/ic_star.svg",
                                      color: Color(0xFFDB166E),
                                      width: 10,
                                      height: 10,
                                    ),
                                    SvgPicture.asset(
                                      "assets/vectors/ic_star.svg",
                                      color: Color(0xFFC4C4C4),
                                      width: 10,
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  "286 reviews",
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 11,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "OPEN IN",
                                    style: TextStyle(
                                      color: Color(0xFF939393),
                                      fontSize: 14,
                                      fontFamily: "Nunito",
                                    ),
                                  ),
                                  Text(
                                    "10:00 - 23:00",
                                    style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Color(0xFFDB166E),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      "assets/vectors/ic_phone.svg",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Contact",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Nunito",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 19,
                  left: 19,
                  bottom: 19,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          "PHOTOS",
                          style: TextStyle(
                            color: Color(0xFF939393),
                            fontSize: 14,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/img_potato.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/img_crab.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/img_pasta.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/img_penne.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    height: 200,
                    child: Image.asset(
                      "assets/images/img_map.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 35,
                    child: Container(
                      child: Image.asset(
                        "assets/images/img_line.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 35,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFDB166E),
                          width: 8,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: -3,
                    child: Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 108,
                        height: 108,
                        decoration: BoxDecoration(
                          color: Color(0xFFF3E7EE),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 220,
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 20,
                  left: 18,
                  right: 18,
                ),
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "DESCRIPTIONS",
                            style: TextStyle(
                              color: Color(0xFF939393),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: IntrinsicHeight(
                        child: ReadMoreText(
                          "Food is scrumptious, delicious, delectable, luscious, great tasting, much more than tasty, really appetizing, lip-smacking; the kind of food to have you licking your in anticipation. This is the word everyone wants to hear when bringing food to the table. Yummy food is never unpalatable, plain tasting, distasteful or disgusting. ",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                          ),
                          trimCollapsedText: 'View more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                            color: Color(0xFFDB166E),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                          lessStyle: TextStyle(
                            color: Color(0xFFDB166E),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 34,
                color: Colors.white,
                padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "MENU",
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Nunito",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllCateScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Color(0xFFDB166E),
                      ),
                      child: Text("See all categories"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 280,
                padding: EdgeInsets.only(bottom: 20),
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.separated(
                    itemCount: menu.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 1,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.only(top: 20),
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 15, left: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 59,
                                  height: 59,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("${menu[index].img}"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "${menu[index].name}",
                                    style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${menu[index].price}",
                                    style: TextStyle(
                                      color: Color(0xFF5F5F5F),
                                      fontSize: 11,
                                      fontFamily: "Nunito",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Color(0xFFE5E5E5),
              ),
              Container(
                color: Colors.white,
                child: Theme(
                  data: ThemeData(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: true,
                    title: Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Text(
                        "View more",
                        style: TextStyle(
                          color: Color(0xFF939393),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    trailing: SizedBox(),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: 200,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView.separated(
                            itemCount: viewMore.length,
                            separatorBuilder: (context, index) {
                              return Container(
                                height: 1,
                                color: Color(0xFFE5E5E5),
                                margin: EdgeInsets.only(top: 20),
                              );
                            },
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.only(top: 15, left: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          width: 59,
                                          height: 59,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "${viewMore[index].img}"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "${viewMore[index].name}",
                                            style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${viewMore[index].price}",
                                            style: TextStyle(
                                              color: Color(0xFF5F5F5F),
                                              fontSize: 11,
                                              fontFamily: "Nunito",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 34,
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "REVIEWS",
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Nunito",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReviewsSrceen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Color(0xFFDB166E),
                      ),
                      child: Text("See all reviews"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                color: Colors.white,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                    itemCount: reviews.length,
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 1,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.only(top: 10),
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 24),
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16),
                                    width: 42,
                                    height: 42,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        "${reviews[index].img}",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 260,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "${reviews[index].name}",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Nunito",
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_star.svg",
                                                  color: Color(0xFFDB166E),
                                                  height: 12,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_star.svg",
                                                  color: Color(0xFFDB166E),
                                                  height: 12,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_star.svg",
                                                  color: Color(0xFFDB166E),
                                                  height: 12,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_star.svg",
                                                  color: Color(0xFFDB166E),
                                                  height: 12,
                                                ),
                                                SvgPicture.asset(
                                                  "assets/vectors/ic_star.svg",
                                                  color:
                                                      Color(colorsCodes[index]),
                                                  height: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6, bottom: 10),
                                      child: Text(
                                        "${reviews[index].time}",
                                        style: TextStyle(
                                          color: Color(0xFF5F5F5F),
                                          fontSize: 13,
                                          fontFamily: "Nunito",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "${reviews[index].comment}",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Nunito",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFDB166E),
        height: 54,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookTableScreen(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(
              "BOOK A TABLE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Nunito",
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class Menu {
  final String? img;
  final String? name;
  final String? price;

  Menu({
    this.img,
    this.name,
    this.price,
  });
}

List<Menu> menu = [
  Menu(
    img: "assets/images/img_onion.png",
    name: "Onion Rings",
    price: "\$ 60.30",
  ),
  Menu(
    img: "assets/images/img_buffalo.png",
    name: "Buffalo Wings",
    price: "\$ 72.00",
  ),
  Menu(
    img: "assets/images/img_spaghetti.png",
    name: "Spaghetti Carbonara",
    price: "\$ 39.00",
  ),
];

// View more
class ViewMore {
  final String? img;
  final String? name;
  final String? price;

  ViewMore({
    this.img,
    this.name,
    this.price,
  });
}

List<ViewMore> viewMore = [
  ViewMore(
    img: "assets/images/img_onion.png",
    name: "Onion Rings",
    price: "\$ 60.30",
  ),
];

// Review
class Reviews {
  final String? img;
  final String? name;
  final String? time;
  final String? comment;
  Reviews({
    this.img,
    this.name,
    this.time,
    this.comment,
  });
}

final List<int> colorsCodes = <int>[0xFFC4C4C4, 0xFFDB166E];

List<Reviews> reviews = [
  Reviews(
    img:
        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    name: "Anna Rose",
    time: "2 hours ago",
    comment:
        "We had a chance to try some of the food from the restaurant prepared for the food festival, and the chicken croquettes were simply amazing!",
  ),
  Reviews(
    img:
        "https://images.unsplash.com/photo-1504593811423-6dd665756598?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
    name: "Robert Brown",
    time: "4 hours ago",
    comment:
        "Amazing meat, lamb is a dream Top service, nice atmostphere........Very recommended. Wine least must be improved",
  ),
];
