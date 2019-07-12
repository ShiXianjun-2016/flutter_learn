import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var stack1 = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://i2.hdslb.com/bfs/face/1bf081a46738328685300a7d560ae0d3363a897d.jpg@72w_72h.jpg",
          ),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          padding: EdgeInsets.all(5),
          child: Text('ShiXianjun'),
        )
      ],
    );

    var stack2 = Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://i2.hdslb.com/bfs/face/1bf081a46738328685300a7d560ae0d3363a897d.jpg@72w_72h.jpg",
          ),
          radius: 100,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Text("shixianjun"),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Text("aaaaaaa"),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: stack2,
      ),
    );
  }
}
