import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDB166E),
        leading: Icon(
          Icons.search,
          color: Colors.white,
        ),
        title: Text(
          "NOTIFICATION",
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
            child: Container(
              child: SvgPicture.asset("assets/vectors/ic_setting.svg"),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.separated(
          itemCount: noti.length,
          separatorBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 3),
              height: 1,
              color: Color(0xFFE5E5E5),
            );
          },
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 14,
                      left: 20,
                    ),
                    child: Center(
                      child: Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${noti[index].img}"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${noti[index].title}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 8),
                          child: Text(
                            "${noti[index].desc}",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "${noti[index].minutes}",
                            style: TextStyle(
                              color: Color(0xFF5F5F5F),
                              fontSize: 11,
                              fontFamily: "Nunito",
                            ),
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
    );
  }
}

class Notification {
  final String? img;
  final String? title;
  final String? desc;
  final String? minutes;

  Notification({
    this.img,
    this.title,
    this.desc,
    this.minutes,
  });
}

List<Notification> noti = [
  Notification(
    img: "assets/images/img_noti1.png",
    title: "Good food and its benifits",
    desc:
        "Goodfood makes cooking fun and easy. We'll provide you with all the ingredients in your meal kit that you need to make a delicious meal.",
    minutes: "15 mins",
  ),
  Notification(
    img: "assets/images/img_noti2.png",
    title: "Your first dinner party",
    desc:
        "A dinner party is a lot more intimate than a party-party, so inviting only friends who have never could be awkward. Instead, invite people.",
    minutes: "25 mins",
  ),
  Notification(
    img: "assets/images/img_noti3.png",
    title: "Become the Grill Master",
    desc:
        "Those steaks are cooking way faster than the potatoes! Grill, it's pretty simple: move the steaks over to the cool side, away from the charcoal.Your steak can rest and continue to absorb those smokey flavors.",
    minutes: "55 mins",
  ),
  Notification(
    img: "assets/images/img_noti4.png",
    title: "Coffee cake and mood",
    desc:
        "Two layers separated by coffee butter icing, which also covers the top of the cake.",
    minutes: "Yesterday",
  ),
];
