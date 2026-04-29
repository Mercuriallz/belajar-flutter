import 'package:belajar_flutter/helper/appbar.dart';
import 'package:belajar_flutter/helper/menu_item.dart';
import 'package:belajar_flutter/presentation/pertemuan_1/activity_intent_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_4/cherry_toast_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_5/pertemuan_5.dart';
import 'package:belajar_flutter/presentation/pertemuan_1/pertemuan_1.dart';
import 'package:belajar_flutter/presentation/pertemuan_6/pertemuan_6.dart';
import 'package:belajar_flutter/presentation/pertemuan_7/pertemuan_7.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuItem> screen = [
    MenuItem(title: "Pertemuan 1", page: Pertemuan1(), subtitle: "Pertemuan 1"),
    MenuItem(title: "Pertemuan 2", page: ProfilePage(), subtitle: "Profile "),
    MenuItem(
      title: "Pertemuan 3",
      page: ActivityIntentPage(),
      subtitle: "Activity & intent",
    ),
    MenuItem(
      title: "Pertemuan 4",
      page: CherryToastPage(),
      subtitle: "Toast & Alert dialog",
    ),
    MenuItem(title: "Pertemuan 5", page: Pertemuan5(), subtitle: "Listview"),
    MenuItem(title: "Pertemuan 6", page: Pertemuan6(), subtitle: "Check box"),
    MenuItem(
      title: "Pertemuan 7",
      page: Pertemuan7(),
      subtitle: "Radio Button",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home Page"),
      body: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        itemCount: screen.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final item = screen[i];
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item.page),
              );
            },

            child: Card(
              color: Color(0xFF1C4964),
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.subtitle),
                leading: Icon(Icons.book),
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
