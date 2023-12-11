import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/recent_search_srceen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 24,
            height: 24,
            child: SvgPicture.asset(
              "assets/vectors/ic_arrowleft.svg",
              fit: BoxFit.none,
            ),
          ),
        ),
        title: const Text(
          "PAYMENT METHOD",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecentSearchScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Container(
          color: Color.fromARGB(255, 250, 250, 250),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 57,
                  color: Colors.white,
                  margin: EdgeInsets.only(
                    top: 25,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/vectors/ic_payment.svg",
                            color: Color(0xFFDB166E),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14),
                            child: Text(
                              "Add a new card",
                              style: TextStyle(
                                color: Color.fromARGB(255, 196, 196, 196),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: SvgPicture.asset(
                          "assets/vectors/ic_right.svg",
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "BANK ACCOUNTS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 186, 186, 186),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 57,
                  color: Colors.white,
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Frankin Campbell  - ***6383",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito",
                        ),
                      ),
                      Container(
                        child: SvgPicture.asset(
                          "assets/vectors/ic_right.svg",
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "CREDIT CARDS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 186, 186, 186),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 246,
                  width: double.infinity,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                      itemCount: card.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 220, 220, 220),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "${card[index].title}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    height: 57,
                                    child: SvgPicture.asset(
                                      "${card[index].icon}",
                                    ),
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
                Container(
                  height: 179,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/img_successful_purchase.png',
                    fit: BoxFit.fitWidth,
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

class CardList {
  final String? icon;
  final String? title;

  CardList({
    this.icon,
    this.title,
  });
}

List<CardList> card = [
  CardList(
    icon: "assets/vectors/ic_visa.svg",
    title: "**** **** **** 2779",
  ),
  CardList(
    icon: "assets/vectors/ic_paypal.svg",
    title: "adaff_hs@gmail.com",
  ),
  CardList(
    icon: "assets/vectors/ic_mastercard.svg",
    title: "**** **** **** 1334",
  ),
];
