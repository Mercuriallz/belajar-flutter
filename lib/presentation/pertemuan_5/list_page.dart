import 'package:belajar_flutter/helper/menu_item.dart';
import 'package:belajar_flutter/presentation/pertemuan_2/profile_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_1/pertemuan_1.dart';
import 'package:belajar_flutter/presentation/pertemuan_3/home_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_4/cherry_toast_page.dart';
import 'package:belajar_flutter/presentation/pertemuan_5/pertemuan_5.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<MenuItem> page = [
    MenuItem(title: "Pertemuan 1", page: Pertemuan1(), subtitle: "Pengenalan Android"),
    MenuItem(title: "Pertemuan 2", page: ProfilePage(), subtitle: "Profile"),
    MenuItem(title: "Petemuan 3", page: HomePage(), subtitle: "Bottom Bar"),
    MenuItem(title: "Pertemuan 4", page: CherryToastPage(), subtitle: "Dialog"),
    MenuItem(title: "Pertemuan 5", page: Pertemuan5(), subtitle: "List")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: page.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final item = page[i];
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
