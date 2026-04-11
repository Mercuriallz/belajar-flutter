import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:simple_alert_dialog/simple_alert_dialog.dart';

class Pertemuan4 extends StatelessWidget {
  const Pertemuan4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              SimpleAlertDialog.show(
                context,
                assetImagepath: AnimatedImage.confirm,
                title: AlertTitleText("Apakah kamu yakin ?"),
                content: AlertContentText("Apakah kamu ingin menambahkan data?"),
                onConfirmButtonPressed: (ctx) {
                  CherryToast.success(
                    inheritThemeColors: true,
                    title: Text("Berhasil menambahkan data"),
                    borderRadius: 0,
                  ).show(context);
                  Navigator.pop(context);
                },
              );
            }, child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Text("Submit", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black
                  ),)
                ],
              ),
            )),
          ],
        ),
      )),
    );
  }
}