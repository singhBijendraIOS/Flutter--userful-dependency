import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:share/share.dart';
import 'package:cool_ui/cool_ui.dart';

class planet extends StatefulWidget {
  @override
  _planetState createState() => _planetState();
}

class _planetState extends State<planet> {
  showProgressAnimation() {}
  shareSocial() {
    Share.share('check out my website https://example.com');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: FAProgressBar(
              currentValue: 80,
              displayText: '%',
              animatedDuration: Duration(seconds: 2),
              maxValue: 100,
              size: 20,
            ),
          ),
          RaisedButton(onPressed: shareSocial,child: Text('Share'),color: Colors.amber,),
        ],
      ),
    );
  }
}
