import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/recent_search_srceen.dart';

class AllCateScreen extends StatefulWidget {
  const AllCateScreen({super.key});

  @override
  State<AllCateScreen> createState() => _AllCateScreenState();
}

class _AllCateScreenState extends State<AllCateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
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
          "ALL CATEGORIES",
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
                  builder: (context) => const RecentSearchScreen(),
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 66,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "STARTERS",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 3,
                            width: 80,
                            color: Color(0xFFDB166E),
                          ),
                        ],
                      ),
                      Text(
                        "MAINS",
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "SIDES",
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "DESSERTS",
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 12,
                  color: Color(0xFFfaf7f7),
                ),
                Container(
                  color: Colors.white,
                  height: 700,
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
                                      borderRadius: BorderRadius.circular(6),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Icon(
          Icons.refresh,
          color: Color(0xFFBABABA),
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
  Menu(
    img: "assets/images/img_chicken_salad.png",
    name: "Chicken Salad",
    price: "\$ 52.00",
  ),
  Menu(
    img: "assets/images/img_noti1.png",
    name: "Porridge with Pork Liver",
    price: "\$ 32.00",
  ),
  Menu(
    img: "assets/images/img_terrazza.png",
    name: "La Terrazza’s Favourite",
    price: "\$ 132.00",
  ),
];
