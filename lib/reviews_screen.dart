import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewsSrceen extends StatefulWidget {
  const ReviewsSrceen({super.key});

  @override
  State<ReviewsSrceen> createState() => _ReviewsSrceenState();
}

class _ReviewsSrceenState extends State<ReviewsSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        leading: Container(
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            "assets/vectors/ic_arrowleft.svg",
            fit: BoxFit.none,
          ),
        ),
        title: const Text(
          "REVIEWS",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.separated(
          itemCount: reviews.length,
          separatorBuilder: (context, index) {
            return Container(
              height: 1,
              color: Color(0xFFE5E5E5),
            );
          },
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 28),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color: Color(colorsCodes[index]),
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6, bottom: 10),
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
                          reviews[index].name == "Robert Brown"
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 59,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img_potato.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 59,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img_crab.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 59,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img_pasta.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 59,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/img_penne.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
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
    );
  }
}

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

final List<int> colorsCodes = <int>[0xFFC4C4C4, 0xFFDB166E, 0xFFC4C4C4];

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
  Reviews(
    img:
        "https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.webp?b=1&s=170667a&w=0&k=20&c=YFwXXbAFfDtX7-2iNcbH6N-ttS3CcnMt7rlUlwIXZ2g=",
    name: "Mike Jhone",
    time: "2 days ago",
    comment:
        "We had a wonderful dinner last nite. The food and staff were terrific. Often when we go to restaurants it is hard to find a menu that works well for the both of us. Random makes that a non-issue. My companion was not as hungry as I was. She asked for two appetizers, while I wanted an appetizer and a main. She only wanted an appetizer portion ",
  ),
];
