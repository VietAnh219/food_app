import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/recent_search_srceen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RecentSearchScreen(),
              ),
            );
          },
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "FAVORITES",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.separated(
          itemCount: favorite.length,
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
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        "${favorite[index].img}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 25,
                      bottom: 10,
                      right: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${favorite[index].title}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${favorite[index].ingredient}",
                          style: TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 11,
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
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                "${favorite[index].reviews} reviews",
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
            );
          },
        ),
      ),
    );
  }
}

class FavotireFood {
  final String? img;
  final String? title;
  final String? ingredient;
  final int? reviews;

  FavotireFood({
    this.img,
    this.title,
    this.ingredient,
    this.reviews,
  });
}

List<FavotireFood> favorite = [
  FavotireFood(
    img: "assets/images/img_squid.png",
    title: "Grilled Squid Tentacles",
    ingredient:
        "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs), Prime Fatty Tuna (2 pcs)",
    reviews: 286,
  ),
  FavotireFood(
    img: "assets/images/img_kebab.png",
    title: "Iskender Kebab",
    ingredient: "Lipie, carne pui, cartofi pai, sosuri, salata - 700g",
    reviews: 286,
  ),
  FavotireFood(
    img: "assets/images/img_burito.png",
    title: "Burito",
    ingredient:
        "Flour tortillas, meat and beans or refried beans,Cheese, rice, lettuce, guacamole, salsa, sour cream",
    reviews: 286,
  ),
];
