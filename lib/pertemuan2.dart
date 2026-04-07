import 'package:belajar_flutter/pertemuan3_.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 2"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.account_circle, size: 100, color: Colors.blueAccent),
            SizedBox(height: 10),
            Text(
              "Hello, Jhon De",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Pertemuan3()),
                );
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Halo ada apa")));
              },
              child: Text("Hit Me"),
            ),
          ],
        ),
      ),
    );
  }
}
