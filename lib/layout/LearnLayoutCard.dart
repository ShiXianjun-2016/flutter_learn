import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    var card = Card(
      
      child: Column(
        children: <Widget>[
          
          ListTile(
            title: Text("北京市朝阳区乐城中心", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("石显军: 17611009999"),
            leading: Icon(Icons.title),
          ),

          Divider(),

          ListTile(
            title: Text("哈尔滨市通河县县政府", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("项晚霞: 17611009999"),
            leading: Icon(Icons.add),
          ),

          Divider(),

          ListTile(
            title: Text("北京市朝阳区合生汇购物中心", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("李欣: 17611009999"),
            leading: Icon(Icons.ac_unit),
          ),

          Divider(),

        ],
      ),
      
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text("卡片"),
      ),
      body: card,
    );
  }
}