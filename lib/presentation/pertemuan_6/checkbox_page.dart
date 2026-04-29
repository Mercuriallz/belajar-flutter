import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool minuman = false;
  bool makanan = false;

  List menu = [];

  void updateMenu() {
    menu.clear();
    if (minuman == true) {
      menu.addAll(["Teh Manis, Kopi, Air Mineral"]);
    }
    if (makanan == true) {
      menu.addAll(["Nasi Goreng, Kwetiau Goreng, Mie Tek-Tek"]);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Menu Restoku",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Card(
              child: SizedBox(
                height: 70,
                width: 250,
                child: Row(
                  children: [
                    Checkbox(
                      value: makanan,
                      onChanged: (v) {
                        setState(() {
                          makanan = !makanan;
                          updateMenu();
                        });
                      },
                      activeColor: Colors.lightBlueAccent,
                      checkColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      "assets/images/makanan.png",
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 15),
                    Text("Makanan"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Card(
              child: SizedBox(
                height: 70,
                width: 250,
                child: Row(
                  children: [
                    Checkbox(
                      value: minuman,
                      onChanged: (v) {
                        setState(() {
                          minuman = !minuman;
                          updateMenu();
                        });
                      },
                      activeColor: Colors.lightBlueAccent,
                      checkColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                     Image.asset(
                      "assets/images/minuman.jpg",
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 15),
                    Text("Minuman"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Menu : ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Wrap(children: [for (var item in menu) Text("$item , ")]),
          ],
        ),
      ),
    );
  }
}
