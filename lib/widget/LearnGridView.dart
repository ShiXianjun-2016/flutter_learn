import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 1.4,

        children: <Widget>[
          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/115436.11918579_285X160X4.jpg",
            fit: BoxFit.cover,
          ),

          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/141842.68468150_285X160X4.jpg",
            fit: BoxFit.cover,
          ),

          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/142949.39785496_285X160X4.jpg",
            fit: BoxFit.cover,
          ),

          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/104847.12857326_285X160X4.jpg",
            fit: BoxFit.cover,
          ),

          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/094430.63289702_285X160X4.jpg",
            fit: BoxFit.cover,
          ),

          Image.network(
            "http://img5.mtime.cn/mg/2019/07/12/143516.73082461_285X160X4.jpg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
