import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget{
  
  final List<String> items = List.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
          itemCount: this.items.length,
        itemBuilder: (context, index){
            return ListTile(
              title: Text(this.items[index]),
            );
        },
      ),
    );
  }
}