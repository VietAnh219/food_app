import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentSearchScreen extends StatefulWidget {
  const RecentSearchScreen({super.key});

  @override
  State<RecentSearchScreen> createState() => _RecentSearchScreenState();
}

class _RecentSearchScreenState extends State<RecentSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFDB166E),
        title: Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: SvgPicture.asset("assets/vectors/ic_search.svg"),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search for address, food...",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 16,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                fontFamily: 'Nunito',
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
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
                              "RECENT SEARCH",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Nunito",
                                color: Color.fromARGB(255, 180, 180, 180),
                              ),
                            ),
                            Text(
                              "Restautrant",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Text(
                              "Seafood in Da nang city",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Nunito",
                              ),
                            ),
                            Text(
                              "Crafit Burger",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                      Text(
                        "RECOMMENDED FOR YOU",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Nunito",
                          color: Color.fromARGB(255, 180, 180, 180),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 439.5,
                  padding: EdgeInsets.only(bottom: 20),
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.separated(
                      itemCount: orders.length,
                      separatorBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            bottom: 10,
                          ),
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 220, 220, 220),
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 14,
                                      right: 20,
                                      bottom: 20,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 58,
                                        width: 58,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "${orders[index].img}"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "${orders[index].name}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Nunito",
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          "${orders[index].cost}",
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Color(0xFF5F5F5F),
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            SizedBox(
                                              width: 70,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                              padding: const EdgeInsets.only(
                                                  left: 6),
                                              child: Text(
                                                "${orders[index].reviews} reviews",
                                                style: TextStyle(
                                                  color: Color(0xFFC4C4C4),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Nunito',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
      ),
    );
  }
}

class Recommended {
  final String? img;
  final String? name;
  final String? cost;
  final int? reviews;

  Recommended({
    this.img,
    this.name,
    this.cost,
    this.reviews,
  });
}

List<Recommended> orders = [
  Recommended(
    img: "assets/images/img_noti1.png",
    name: "Porridge with Pork Liver",
    cost: "\$ 32.00",
    reviews: 286,
  ),
  Recommended(
    img: "assets/images/img_chicken.png",
    name: "Concubine Chicken (Half)",
    cost: "\$ 132.00",
    reviews: 286,
  ),
  Recommended(
    img: "assets/images/img_cake.png",
    name: "Ginger Red Date Cake",
    cost: "\$ 18.00",
    reviews: 286,
  ),
];
