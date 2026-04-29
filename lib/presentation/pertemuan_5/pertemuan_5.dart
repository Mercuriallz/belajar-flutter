import 'package:belajar_flutter/helper/appbar.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_5/list_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Pertemuan5 extends StatefulWidget {
  const Pertemuan5({super.key});

  @override
  State<Pertemuan5> createState() => _Pertemuan5PageState();
}

class _Pertemuan5PageState extends State<Pertemuan5> {
  int currentIndex = 0;

  List<Widget> page = [ListPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Pertemuan 5",
      ),
      body: page[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          currentIndex = i;
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.list),
            title: Text("Listview"),
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
