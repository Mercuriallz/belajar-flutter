import 'package:belajar_flutter/presentation/pertemuan_3/home_page.dart';
import 'package:belajar_flutter/presentation/uts/uts_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Pertemuan3 extends StatefulWidget {
  const Pertemuan3({super.key});

  @override
  State<Pertemuan3> createState() => _Pertemuan3State();
}

class _Pertemuan3State extends State<Pertemuan3> {
  var currentIndex = 0;

  final List<Widget> page = [
    HomePage(),
    Container(color: Colors.blueGrey),
    Container(color: Colors.greenAccent),
    UtsPage()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Beranda"),
            selectedColor: Color(0xFF1C4964),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text("Kalender"),
            selectedColor: Color(0xFF1C4964),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.approval_rounded),
            title: Text("Maps"),
            selectedColor: Color(0xFF1C4964),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notifikasi"),
            selectedColor: Color(0xFF1C4964),
          ),
        ],
      ),
    );
  }
}
