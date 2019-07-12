import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("垂直布局 Column"),
      ),
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text("shixianjun"),
            Text("laksjdlajsldjalkdjkalsd"),
            Text("sdjakljdlakjsd"),
          ],
        ),
      ),
    );
  }
}