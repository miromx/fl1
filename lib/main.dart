import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            FlatButton(
              onPressed: () async {
                const url = 'https://cadfem-cis.ru';
                if (await canLaunch(url)) {
                  await launch(url);
                }
                else {
                  throw 'can\'t do this at $url';
                }
              },
              child: Text("Click me"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter demotitle'),
      ),
      body: MyBody()
    )
  )
  );
}



