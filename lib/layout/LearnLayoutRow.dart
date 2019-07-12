import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("水平布局 Row"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("添加"),
            ),
          ),

          Expanded(
            child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("添加"),
            ),
          ),

          Expanded(
            child: RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("添加"),
            ),
          ),

        ],
      ),
    );
  }
}
