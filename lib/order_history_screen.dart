import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        title: const Text(
          'ORDER HISTORY',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Nunito',
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              child: SvgPicture.asset("assets/vectors/ic_setting.svg"),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.separated(
          itemCount: orders.length,
          padding: const EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
          ),
          separatorBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
            );
          },
          itemBuilder: (context, index) {
            return Container(
              // padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 191, 188, 188),
                    blurRadius: 2,
                    offset: Offset(-1.5, 4),
                  ),
                ],
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
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage("${orders[index].img}"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            "${orders[index].desc}",
                            style: TextStyle(
                              color: Color(0xFF5F5F5F),
                              fontWeight: FontWeight.normal,
                              fontFamily: "Nunito",
                              fontSize: 11,
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
                                padding: const EdgeInsets.only(left: 6),
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
                    ],
                  ),
                  Container(
                    height: 1,
                    color: Color(0xFFE5E5E5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            SvgPicture.asset("assets/vectors/ic_list.svg"),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "${orders[index].date}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: "Nunito",
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "${orders[index].cost}0",
                          style: TextStyle(
                            color: Color(0xFFDB166E),
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class OrderHistory {
  final String? img;
  final String? name;
  final String? desc;
  final int? reviews;
  final String? date;
  final String? cost;

  OrderHistory({
    this.img,
    this.name,
    this.desc,
    this.reviews,
    this.date,
    this.cost,
  });
}

List<OrderHistory> orders = [
  OrderHistory(
    img: "assets/images/img_potato.png",
    name: "Awful Potato Bagel",
    desc: "Truffle with mashed potato",
    reviews: 286,
    date: "28 Nov 2021 10 : 32 AM",
    cost: "\$ 332.00",
  ),
  OrderHistory(
    img: "assets/images/img_crab.png",
    name: "Athalia Putri",
    desc: "Truffle with mashed potato",
    reviews: 286,
    date: "28 Nov 2021 10 : 32 AM",
    cost: "\$ 332.00",
  ),
  OrderHistory(
    img: "assets/images/img_pasta.png",
    name: "Athalia Putri",
    desc: "Truffle with mashed potato",
    reviews: 286,
    date: "28 Nov 2021 10 : 32 AM",
    cost: "\$ 332.00",
  ),
  OrderHistory(
    img: "assets/images/img_penne.png",
    name: "Athalia Putri",
    desc: "Truffle with mashed potato",
    reviews: 286,
    date: "28 Nov 2021 10 : 32 AM",
    cost: "\$ 332.00",
  ),
];
