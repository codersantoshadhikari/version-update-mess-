import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Update Dialog Example'),
        ),
        body: Center(
          child: UpdateNotificationButton(),
        ),
      ),
    );
  }
}

class UpdateNotificationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Update Available'),
              content: Text(
                  'A new version of the app is available. Please update to the latest version to enjoy new features and improvements.'),
              actions: <Widget>[
                TextButton(
                  child: Text('Later'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Update Now'),
                  onPressed: () {
                    // Insert your update logic here
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Text('Check for Updates'),
    );
  }
}
