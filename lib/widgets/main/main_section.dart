import 'package:flutter/material.dart';
import 'package:workly/screens/home_screen.dart';
import 'package:workly/widgets/main/icon_info.dart';
import 'package:workly/widgets/main/projects.dart';
import 'package:workly/widgets/main/comments.dart';
import 'home_banner.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [HomeBanner(), IconInfo(), Projects(), Comments()],
        ),
      ),
    );
  }
}
