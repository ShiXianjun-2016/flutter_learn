import 'package:flutter/material.dart';

class LearnChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "微信",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        backgroundColor: Color(0xFFEDECEC),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {},
              child: Image.asset(
                "assets/images/icon_add.png",
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFEDECEC),
        child: Column(
          children: <Widget>[
            ChatListSearchBar(),
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) {
                return chatListCell(index);
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 79),
                  child: Container(
                    height: 0.5,
                    color: Color(0xFFD8D8D8),
                  ),
                );
              },
              itemCount: 8,
            )),
          ],
        ),
      ),
    );
  }

  Widget chatListCell(int index) {
    return ChatListCell();
  }
}

class ChatListSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 53,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 10),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              color: Colors.white,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "搜索",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF8E8E92),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatListCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var userPic = Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "assets/images/user_pic.jpeg",
            height: 50,
            width: 50,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          alignment: Alignment(1.1, -1.1),
          child: ClipOval(
            child: Container(
              width: 10,
              height: 10,
              color: Color(0xFFFA5050),
            ),
          ),
        ),
      ],
    );

    var userNameMess = Padding(
      padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '订阅号消息',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
          ),
          Text(
            '[2条]程序人生：真实揭秘90后程',
            style: TextStyle(fontSize: 13, color: Color(0xFF9A9A9A)),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );

    var userMessDate = Padding(
      padding: EdgeInsets.only(top: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '12:33',
            style: TextStyle(fontSize: 12, color: Color(0xFF9A9A9A)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13),
          ),
          Image.asset(
            "assets/images/icon_nomess.png",
            height: 13,
            width: 13,
          ),
        ],
      ),
    );

    return Container(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
      height: 70,
      color: Color(0xFFFEFEFE),
      child: Row(
        children: <Widget>[
          userPic,
          Expanded(child: userNameMess),
          userMessDate,
        ],
      ),
    );
  }
}
