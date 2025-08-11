import 'package:flutter/material.dart';
import 'package:workly/constans.dart';
import 'package:workly/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 2.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/job.jpg', fit: BoxFit.cover),
          Container(color: kDarkColor.withValues(alpha: (0.20))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build a greate future \n for all of us',
                  style:
                      Responsive.isDesktop(context)
                          ? Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                          : Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2,
                      vertical: kDefaultPadding,
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Contact us',
                    style: TextStyle(color: kDarkColor),
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
