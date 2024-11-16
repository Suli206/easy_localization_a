import 'package:easy_localization_a/screen/settings.dart';
import 'package:easy_localization_a/screen/start.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key, this.currentIndex = 0});
  @override
  State<Bottombar> createState() => _BottombarState();
  final int currentIndex;
}

class _BottombarState extends State<Bottombar> {
  late int indexSreen = widget.currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexSreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedFontSize: 0,
        onTap: (index) {
          setState(() {
            indexSreen = index;
          });
        },
        currentIndex: indexSreen,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: indexSreen == 0
                ? const Icon(
                    Icons.home,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: indexSreen == 1
                ? const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
          ),
        ],
      ),
    );
  }
}

List<Widget> pages = [
  const Start(),
  const Settings(),
];
