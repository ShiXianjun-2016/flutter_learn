import 'package:flutter/material.dart';
import 'widget/ListView.dart';

void main() => runApp(LearnApp());

class LearnApp extends StatelessWidget {
  final List<String> arrItems = ["ListView", "GridView"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Learn",
      home: Scaffold(
        appBar: AppBar(
          title: Text("列表"),
        ),
        body: ListView.builder(
            itemCount: this.arrItems.length * 2,
            itemBuilder: (context, index) {
              if (index.isOdd) return new Divider();
              final i = index ~/ 2;
              return _buildRow(this.arrItems[i], i, context);
            }),
      ),
    );
  }

  Widget _buildRow(String item, int index, BuildContext context) {
    return new ListTile(
      title: new Text(
        item,
        style: const TextStyle(fontSize: 18.0),
      ),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        this._pushNextPage(index, context);
      },
    );
  }

  void _pushNextPage(@required int index, @required BuildContext context) {
    switch (index) {
      case 0:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ListViewPage()));
        }
        break;
    }
  }
}
