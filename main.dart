import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8MjAyMCUyMGNhcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80';
  String _img2 =
      'https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'Başlık',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800),
          ),
        ),
        body: Container(
          color: Colors.black38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.list,
                size: 64,
                color: Colors.amber,
              ),
              Icon(
                Icons.camera_alt,
                size: 64,
                color: Colors.amber,
              ),
              Icon(
                Icons.notification_add,
                size: 64,
                color: Colors.amber,
              ),
              Icon(
                Icons.explore_outlined,
                size: 64,
                color: Colors.amber,
              ),
              Icon(
                Icons.alarm,
                size: 64,
                color: Colors.amber,
              ),
              Icon(
                Icons.settings,
                size: 64,
                color: Colors.amber,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }

  Center containerDersleri() {
    return Center(
        child: Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'TEST',
        style: TextStyle(fontSize: 100),
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.rectangle,
          border: Border.all(width: 4, color: Colors.black38),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          image: DecorationImage(
              image: NetworkImage(_img2),
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(5, 10), blurRadius: 10),
            BoxShadow(
                color: Colors.black38, offset: Offset(0, -5), blurRadius: 10)
          ]),
    ));
  }
}
