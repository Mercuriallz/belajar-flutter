import 'package:belajar_flutter/helper/appbar.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_4/pertemuan4.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CherryToastPage extends StatefulWidget {
  const CherryToastPage({super.key});

  @override
  State<CherryToastPage> createState() => _CherryToastPageState();
}

class _CherryToastPageState extends State<CherryToastPage> {
  int currentIndex = 0;

  List<Widget> page = [Pertemuan4(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
       title: "Pertemuan 4",
      ),
      body: page[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Cherry Toast"),
            selectedColor: Color(0xFF1C4964),
          ),
          SalomonBottomBarItem(icon: Icon(Icons.person), title: Text("Profile"))
        ],
      ),
    );
  }
}
