import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void dialogAlertIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alert Dialog'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is an alert dialog'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: [
              CupertinoDialogAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel',
                      style: TextStyle(color: Colors.red))),
              CupertinoDialogAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        });
  }

  void dialogAlertAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: const Text('Alert Dialog', textAlign: TextAlign.center),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is an alert dialog'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
        onPressed: () => Platform.isIOS
            ? dialogAlertIOS(context)
            : dialogAlertAndroid(context),
        child: const Text(
          'AlertScreen',
          style: TextStyle(fontSize: 20),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close, color: Colors.black),
      ),
    );
  }
}
