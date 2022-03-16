import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const GridButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Color(0xff024466),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              this.icon,
              color: Colors.white,
              size: 40,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              this.label,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
