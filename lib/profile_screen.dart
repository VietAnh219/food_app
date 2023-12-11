import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/login_screen.dart';
import 'package:foodapp_flutter/order_history_screen.dart';
import 'package:foodapp_flutter/payment_method_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 278,
            decoration: BoxDecoration(
              color: Color(0xFFDB166E),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 2, 247, 100), BlendMode.difference),
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img_profliebg.png"),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        right: 24,
                        top: 36,
                        bottom: 116,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          FirebaseAuth.instance.signOut;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(title: ""),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 67,
                      height: 67,
                      margin: EdgeInsets.only(left: 25, right: 16),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1517841905240-472988babdf9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Erik Walters",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "0383 zendar park",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xFFFCF9F9),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderHistoryScreen(),
                            ),
                          );
                        },
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.only(top: 16),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 13,
                                horizontal: 25,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Container(
                                          width: 47,
                                          height: 47,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF4C8DE7),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: SvgPicture.asset(
                                            "assets/vectors/ic_history.svg",
                                            fit: BoxFit.none,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Orders History",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Nunito",
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                      "assets/vectors/ic_right.svg",
                                      fit: BoxFit.none,
                                      color: Color(0xFFBABABA),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12),
                        height: 334,
                        width: double.infinity,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView.builder(
                            itemCount: profile.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  if (profile[index].title ==
                                      "Payment Method") {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentScreen(),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.only(top: 6),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 13,
                                      horizontal: 25,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20),
                                              child: Container(
                                                width: 47,
                                                height: 47,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    int.parse(
                                                      "${profile[index].color}",
                                                    ),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: SvgPicture.asset(
                                                  "${profile[index].icon}",
                                                  fit: BoxFit.none,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "${profile[index].title}",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Nunito",
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                            "assets/vectors/ic_right.svg",
                                            fit: BoxFit.none,
                                            color: Color(0xFFBABABA),
                                          ),
                                        ),
                                      ],
                                    ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileList {
  final String? icon;
  final String? color;
  final String? title;

  ProfileList({
    this.icon,
    this.color,
    this.title,
  });
}

List<ProfileList> profile = [
  ProfileList(
    icon: "assets/vectors/ic_payment.svg",
    color: "0xFF8ABE4E",
    title: "Payment Method",
  ),
  ProfileList(
    icon: "assets/vectors/ic_bigstar.svg",
    color: "0xFFF55525",
    title: "Reward Credits",
  ),
  ProfileList(
    icon: "assets/vectors/ic_setting.svg",
    color: "0xFFF8A627",
    title: "Settings",
  ),
  ProfileList(
    icon: "assets/vectors/ic_friend.svg",
    color: "0xFF52E3C2",
    title: "Invite Friends",
  ),
];
