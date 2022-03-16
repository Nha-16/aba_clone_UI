import 'package:aba_clone_flutter/widgets/grid_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aba_clone_flutter/widgets/drawer_header.dart';

class HomePage extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005d86),
        title: Text(
          "ABA ' Mobile",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.wifi_calling_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
                DrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.white,
                      // Color.fromARGB(255, 24, 27, 94),
                      Color(0xff024466),
                    ],
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  children: [
                    GridButton(
                      icon: CupertinoIcons.creditcard_fill,
                      label: ("Account"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.creditcard,
                      label: ("Virtual Card"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.money_dollar_circle,
                      label: ("Payments"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.doc_plaintext,
                      label: ("New Account"),
                    ),
                    GridButton(
                      icon: Icons.cast_sharp,
                      label: ("Cash to ATM"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.arrow_right_arrow_left_circle,
                      label: ("Transfers"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.qrcode_viewfinder,
                      label: ("Scan QR"),
                    ),
                    GridButton(
                      icon: CupertinoIcons.chart_bar_circle,
                      label: ("Loans"),
                    ),
                    GridButton(
                      icon: Icons.location_on_outlined,
                      label: ("ABA Location"),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 20.00),
                width: double.infinity,
                color: Color(0XFf00bcd5),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Transfer',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Create your templates here to make transfer \nquicker',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Positioned(
                      right: -40,
                      bottom: -40,
                      child: Icon(
                        Icons.circle,
                        color: Colors.white.withOpacity(0.5),
                        size: 130,
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: 5,
                      child: Icon(
                        CupertinoIcons.arrow_right_arrow_left,
                        color: Color(0XFf00bcd5),
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 20.00),
                width: double.infinity,
                color: Color(0xffee534f),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Quick Payments",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Paying your bills with templates is faster",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Positioned(
                      right: -40,
                      bottom: -40,
                      child: Icon(
                        Icons.circle,
                        color: Colors.white.withOpacity(0.5),
                        size: 130,
                      ),
                    ),
                    Positioned(
                      right: -2,
                      bottom: -5,
                      child: Icon(
                        CupertinoIcons.money_dollar,
                        color: Color(0xffee534f),
                        size: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget DrawerList() {
  // ignore: dead_code
  return Container();
}
