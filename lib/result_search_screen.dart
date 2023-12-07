import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultSearchScreen extends StatefulWidget {
  const ResultSearchScreen({super.key});

  @override
  State<ResultSearchScreen> createState() => _ResultSearchScreenState();
}

class _ResultSearchScreenState extends State<ResultSearchScreen> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFAC1458),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xFFDB166E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 28,
                      left: 16,
                      right: 16,
                    ),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            "assets/vectors/ic_arrowleft.svg",
                            fit: BoxFit.none,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 20),
                          child: Container(
                            height: 30,
                            width: 2,
                            decoration: BoxDecoration(
                              color: Color(0xFFE5E5E5),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ),
                        Container(
                          width: 18,
                          height: 18,
                          margin: EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            "assets/vectors/ic_search.svg",
                            fit: BoxFit.cover,
                            color: Color(0xFFBABABA),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Restaurants",
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/vectors/ic_location.svg",
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Italia",
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 19,
                      horizontal: 16,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Nearby",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Top review",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Recommend",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            color: Color(0xFFAC1458),
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/vectors/ic_filter.svg"),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nunito",
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ToggleButtons(
                  borderColor: Colors.transparent,
                  onPressed: (int index) {
                    setState(() {
                      _isToggled = index == 0;
                    });
                  },
                  isSelected: [_isToggled, !_isToggled],
                  children: <Widget>[
                    SvgPicture.asset("assets/vectors/ic_box.svg"),
                    SvgPicture.asset("assets/vectors/ic_chat.svg"),
                  ],
                ),
              ],
            ),
          ),
          _isToggled
              ? Container(
                  height: 540,
                  child: ListView.separated(
                    itemCount: search.length,
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
                                  "${search[index].img}",
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
                                    "${search[index].name}",
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
                                    "${search[index].ingredient}",
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
                                          "${search[index].reviews} reviews",
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
                )
              : Container(
                  height: 540,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: GridView.builder(
                    itemCount: search.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 310,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
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
                        width: 167,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 167,
                                width: 167,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("${search[index].img}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${search[index].name}",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "${search[index].ingredient}",
                                      style: TextStyle(
                                        color: Color(0xFF5F5F5F),
                                        fontSize: 11,
                                        fontFamily: "Nunito",
                                      ),
                                    ),
                                    SizedBox(height: 5),
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
                                          padding:
                                              const EdgeInsets.only(left: 6),
                                          child: Text(
                                            "${search[index].reviews}",
                                            style: TextStyle(
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Nunito',
                                            ),
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
                      );
                    },
                  ),
                ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Icon(
          Icons.refresh,
          color: Color(0xFFBABABA),
        ),
      ),
    );
  }
}

class SearchResult {
  final String? img;
  final String? name;
  final String? ingredient;
  final String? reviews;

  SearchResult({
    this.img,
    this.name,
    this.ingredient,
    this.reviews,
  });
}

List<SearchResult> search = [
  SearchResult(
    img: "assets/images/img_sushi.png",
    name: "Tuna Sushi Platter (3 Types)",
    ingredient:
        "Sushi Platter | Tuna (2 pcs), Semi-fatty Tuna (2 pcs), Prime Fatty Tuna (2 pcs)",
    reviews: "286 reviews",
  ),
  SearchResult(
    img: "assets/images/img_rib_rice.png",
    name: "Secret Curry with Pan-seared Lamb....",
    ingredient: "Lipie, carne pui, cartofi pai, sosuri, salata - 700g",
    reviews: "286 reviews",
  ),
  SearchResult(
    img: "assets/images/img_piza.png",
    name: "Pizza Boscaiola",
    ingredient: "Mozzarella, ciuperci, bacon, oregano – 420g",
    reviews: "286 reviews",
  ),
  SearchResult(
    img: "assets/images/img_hambuger.png",
    name: "Pulpa de pui la",
    ingredient: "Lipie de casa, carne de pui, sosuri, salata - 400g",
    reviews: "286 reviews",
  ),
  SearchResult(
    img: "assets/images/img_nem.png",
    name: "Nem",
    ingredient: "Corn, mici 4 buc., cartofi pai, varza, mustar - 550g",
    reviews: "286 reviews",
  ),
  SearchResult(
    img: "assets/images/img_burito.png",
    name: "Shaorma",
    ingredient: "Lipie, carne pui, cartofi pai, sosuri, salata - 700g",
    reviews: "286 reviews",
  ),
];
