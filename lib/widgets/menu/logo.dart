import 'package:flutter/material.dart';
import 'package:workly/constans.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // Responsive image size
    double imgWidth = width < 400 ? 100 : 120;
    double imgHeight = width < 400 ? 80 : 180;

    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 1),
            Image(
              image: AssetImage('images/logo.png'),
              width: imgWidth,
              height: imgHeight,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Workly',
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Finde your job \n best exprience ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.3,
                  fontSize: width < 400 ? 11 : 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
