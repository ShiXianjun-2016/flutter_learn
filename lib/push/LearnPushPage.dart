import 'package:flutter/material.dart';

class PushCurrPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个页面"),
      ),
      body: Center(
        child: IconButton(icon:Icon(Icons.arrow_forward), onPressed: (){

          Navigator.push(context, MaterialPageRoute(
              builder:(context) => SecondScreer(),
          ));

        }),
      ),
    );
  }
}


class SecondScreer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Center(
        child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){

          Navigator.pop(context);

        }),
      ),
    );
  }
}