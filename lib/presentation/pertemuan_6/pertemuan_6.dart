import 'package:belajar_flutter/helper/appbar.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_6/checkbox_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6PageState();
}

class _Pertemuan6PageState extends State<Pertemuan6> {
  int currentIndex = 0;

  List<Widget> page = [CheckboxPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Pertemuan 6",
      ),
      body: page[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.check_box),
            title: Text("Check box"),
            selectedColor: Color(0xFF1C4964),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.amber
          ),
        ],
      ),
    );
  }
}
