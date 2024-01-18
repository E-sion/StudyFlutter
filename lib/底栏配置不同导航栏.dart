import 'package:flutter/material.dart';
import '/taps/home.dart';
import '/taps/setting.dart';
// 先写出底部栏 即bottomNavigationBar
void main() {
  runApp(MaterialApp(
    home: buttom(),
  ));
}

class buttom extends StatefulWidget {
  @override
  State<buttom> createState() => _buttom();
}

class _buttom extends State<buttom> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  int _nowPage = 0;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  List bodyPage = [
    NewHomePage(),
    NewSettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('底栏界面配置顶部分页'),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _nowPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '主页'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
        ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _nowPage,
      ),
      body: bodyPage[_nowPage],
    );
  }
}