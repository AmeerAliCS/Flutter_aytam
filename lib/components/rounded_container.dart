import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {

  const RoundedContainer({required this.title, required this.imageUrl, required this.onPressed, required this.padding, required this.subtitle});
  final String imageUrl;
  final String title;
  final String subtitle;
  final double padding;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 170.0,
        height: 170.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(padding),
                child: Image.asset(imageUrl),
              ),
              const SizedBox(height: 10.0),
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: wColor),),
              Text(subtitle, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: wColor),)
            ],
          ),
        ),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: bColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
