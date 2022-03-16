import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff005d86),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 66.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   image: DecorationImage(
            //     image: new NetworkImage(
            //         "https://web.facebook.com/photo/?fbid=949316059351129&set=a.113450892937654"),
            //   ),
            // ),
          ),
          Text(
            "Sopanha YOEUN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "App ID: 99976",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
