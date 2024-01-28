import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Likes(),
  ));
}

class Likes extends StatefulWidget {

  @override
  _LikesState createState() {
    return _LikesState();
  }
}

class _LikesState extends State<Likes> {
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('喜欢界面'),),
      body: const Center(
        child: Text('这里是喜欢界面'),
      ),
    );
  }
}