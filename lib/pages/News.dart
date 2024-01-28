import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: News(),
  ));
}

class News extends StatefulWidget {

  @override
  _NewsState createState() {
    return _NewsState();
  }
}

class _NewsState extends State<News> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('新闻界面'),),
      body: const Center(
        child: Text('这里是新闻界面'),
      ),
    );
  }
}