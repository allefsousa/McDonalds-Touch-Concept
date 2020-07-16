import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;
  final int quantity;

  OrderItem(
      {@required this.name,
      @required this.imageUrl,
      @required this.price,
      @required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                imageUrl,
                height: 28,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              price,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 22,
                  height: 16,
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      size: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "$quantity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 8,),
                Container(
                  width: 22,
                  height: 16,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFCB3F),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 10,
                      color: Colors.black,
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
