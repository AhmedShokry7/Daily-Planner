import 'package:daily_planner/core/data/pages_list.dart';
import 'package:daily_planner/core/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BootmNavigationBarView extends StatefulWidget {
  const BootmNavigationBarView({super.key});

  @override
  State<BootmNavigationBarView> createState() => _BootmNavigationBarViewState();
}

class _BootmNavigationBarViewState extends State<BootmNavigationBarView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: kWhiteColor,
        items: const [
          BottomNavigationBarItem(
            icon: IconImage(image: homeRegular),
            label: "",
            activeIcon: IconImage(image: homeBold),
          ),
          BottomNavigationBarItem(
            icon: IconImage(image: categoryRegular),
            label: "",
            activeIcon: IconImage(image: categoryBold),
          ),
          BottomNavigationBarItem(
            icon: IconImage(image: profileRegular),
            label: "",
            activeIcon: IconImage(image: profileBold),
          ),
          BottomNavigationBarItem(
            icon: IconImage(image: settingsRegular),
            label: "",
            activeIcon: IconImage(image: settingsBold),
          ),
        ],
      ),

      body: pagesList.elementAt(currentIndex),
    );
  }
}

class IconImage extends StatelessWidget {
  final String image;
  const IconImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, height: 28.h, width: 28.h, fit: BoxFit.fill);
  }
}
