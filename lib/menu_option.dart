import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int discount;

  MenuOption(
      {@required this.title, @required this.imageUrl, @required this.discount});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
            color: discount != null ? Color(0xFFC8151D) : Colors.grey[50],
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                imageUrl,
                height: 48,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: discount != null ? Colors.white : Colors.black
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
