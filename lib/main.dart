import 'package:flutter/material.dart';
import 'widget/LearnListView.dart';
import 'widget/LearnGridView.dart';
import 'layout/LearnLayoutRow.dart';
import 'layout/LearnLayoutColumn.dart';
import 'layout/LearnLayoutStack.dart';
import 'layout/LearnLayoutCard.dart';

void main() => runApp(LearnApp());

class LearnApp extends StatelessWidget {
  final List<String> arrItems = ["ListView", "GridView", "水平布局 Row", "垂直布局 Column", "Stack 层叠布局", "卡片组件布局"];

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
      case 1:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new GridViewPage()));
        }
        break;
      case 2:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new RowPage()));
        }
        break;
      case 3:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ColumnPage()));
        }
        break;
      case 4:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new StackPage()));
        }
        break;
      case 5:
        {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new CardPage()));
        }
        break;
    }
  }
}
