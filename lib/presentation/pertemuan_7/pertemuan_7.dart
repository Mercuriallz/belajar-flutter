import 'package:belajar_flutter/helper/appbar.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_7/radiobutton_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Pertemuan7 extends StatefulWidget {
  const Pertemuan7({super.key});

  @override
  State<Pertemuan7> createState() => _Pertemuan7PageState();
}

class _Pertemuan7PageState extends State<Pertemuan7> {
  int currentIndex = 0;

  List<Widget> page = [RadiobuttonPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Pertemuan 7",
      ),
      body: page[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.radio_button_checked),
            title: Text("Radio Button"),
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
