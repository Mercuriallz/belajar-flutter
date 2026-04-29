import 'package:flutter/material.dart';

class RadiobuttonPage extends StatefulWidget {
  const RadiobuttonPage({super.key});

  @override
  State<RadiobuttonPage> createState() => _RadiobuttonPageState();
}

class _RadiobuttonPageState extends State<RadiobuttonPage> {
  String selectedGender = "Belum ada pilihan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text("Pilih Jenis Kelamin: $selectedGender"),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: RadioMenuButton(
                value: "Laki-Laki",
                groupValue: selectedGender,
                onChanged: (v) {
                  setState(() {
                    selectedGender = v!;
                  });
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
                  ),
                  elevation: WidgetStatePropertyAll(2),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Row(
                  children: [
                  SizedBox(
                    width: 10,

                  ),
                  SizedBox(
                    height: 50,
                    child: Icon(Icons.male),
                  ),
                  Text("Laki laki")
                ]),
              ),
            ),

            SizedBox(
              width: 200,
              child: RadioMenuButton(
                value: "Perempuan",
                groupValue: selectedGender,
                onChanged: (v) {
                  setState(() {
                    selectedGender = v!;
                  });
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  elevation: WidgetStatePropertyAll(2),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: Row(
                    children: [
                      SizedBox(
                        width: 10,

                      ),
                      SizedBox(
                        height: 50,
                        child: Icon(Icons.female),
                      ),
                      Text("Perempuan")
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
