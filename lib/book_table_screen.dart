import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_svg/svg.dart';

class BookTableScreen extends StatefulWidget {
  const BookTableScreen({super.key});

  @override
  State<BookTableScreen> createState() => _BookTableScreenState();
}

class _BookTableScreenState extends State<BookTableScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  double sum =
      menu.fold(0, (double preValue, data) => preValue + data.allprice);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 24,
          height: 24,
          child: InkWell(
            child: Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          "BOOK A TABLE",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto",
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: today,
                  calendarFormat: _calendarFormat,
                  rowHeight: 47,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _onDaySelected,
                  calendarStyle: const CalendarStyle(
                    todayTextStyle: TextStyle(
                      color: Colors.black,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Color(0xFFDB166E),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.only(
                    top: 35,
                  ),
                  color: Color.fromARGB(155, 229, 229, 229),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 66,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 90,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 15,
                        ),
                        child: Text(
                          "10:14",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 95, 95, 95),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 15,
                        ),
                        child: Text(
                          "10:14",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFDB166E),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 15,
                        ),
                        child: Text(
                          "10:14",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 95, 95, 95),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 15,
                        ),
                        child: Text(
                          "10:14",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 95, 95, 95),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 23,
                          vertical: 15,
                        ),
                        child: Text(
                          "10:14",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 95, 95, 95),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 25,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "ORDERING",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 147, 147, 147),
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                      Text(
                        "Number of person",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 147, 147, 147),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "2 Adults, 3 Children",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              fontSize: 15,
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
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 191, 188, 188),
                        blurRadius: 2,
                        offset: Offset(-1.5, 2),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 25,
                    bottom: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "MENU",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 147, 147, 147),
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 300,
                  padding: EdgeInsets.only(bottom: 10),
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.separated(
                      itemCount: menu.length,
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
                                color: Color(0xFFE5E5E5),
                              ),
                            ),
                          ),
                          padding: EdgeInsets.only(top: 5, left: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 20,
                                          ),
                                          child: Center(
                                            child: Container(
                                              height: 58,
                                              width: 58,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "${menu[index].img}",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            "\$ ${menu[index].price}",
                                            style: TextStyle(
                                              color: Color(0xFF5F5F5F),
                                              fontSize: 11,
                                              fontFamily: "Nunito",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDB166E),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      "View more",
                      style: TextStyle(
                        color: Color(0xFF939393),
                        fontFamily: "Roboto",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 191, 188, 188),
                        blurRadius: 2,
                        offset: Offset(-1.5, 2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFDB166E),
        height: 54,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total :\$ ${sum}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Nunito",
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        buildSuccessDialog(context),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFDB166E),
                  side: BorderSide(color: Color(0xFFDB166E)),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "ORDER",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Nunito",
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_forward,
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
    );
  }
}

// Dialog screen
Widget dialogBox(context) {
  return Container(
    width: 250,
    height: 450,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                top: 50,
                left: 100,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFDB166E).withOpacity(0.2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Container(
                height: 262,
                width: 262,
                child: Image.asset("assets/images/img_deliver.png"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Text(
              'Thank You !',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Your oder is succesfully',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 126,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFDB166E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// Dialog screen
Widget buildSuccessDialog(BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.white,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        dialogBox(context),
      ],
    ),
    actions: const <Widget>[],
  );
}

class Menu {
  final String? img;
  final String? name;
  final String? price;
  final double allprice;

  Menu({
    this.img,
    this.name,
    this.price,
    required this.allprice,
  });
}

List<Menu> menu = [
  Menu(
    img: "assets/images/img_noti1.png",
    name: "Porridge with Pork Liver",
    price: "32.00",
    allprice: 32.00,
  ),
  Menu(
    img: "assets/images/img_noti1.png",
    name: "Porridge with Pork Liver",
    price: "32.00",
    allprice: 32.00,
  ),
  Menu(
    img: "assets/images/img_cake.png",
    name: "Ginger Red Date Cake",
    price: "18.00",
    allprice: 18.00,
  ),
  Menu(
    img: "assets/images/img_chicken.png",
    name: "Concubine Chicken (Half)",
    price: "32.00",
    allprice: 32.00,
  ),
];
