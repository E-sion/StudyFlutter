import 'package:flutter/material.dart';
import 'taps/delete.dart';
import 'taps/home.dart';

// 思路解析：浮动按钮（FloatingActionButton）的设置方式

void main(){
  runApp(const MaterialApp(
    home: Floating(),
  ));
}

class Floating extends StatefulWidget{
  const Floating({super.key});

  @override
  State<Floating> createState() => _Floating();
}

class _Floating extends State<Floating>{

  int _nowPage = 0; // 当前的界面序列

  final List _pagesList = [ // 所有界面列表
    const DeletePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButton组件学习')),
      body: _pagesList[_nowPage],
      floatingActionButton: Container(
        child: FloatingActionButton(
          backgroundColor: _nowPage==1?Colors.blue:Colors.red, // 三目运算符，如果？之前的值为真，则执行：前面的，如果为假则执行：之后的。
          onPressed: (){
            setState(() {
              _nowPage = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked, // 设置Floating组件的位置，Docked组件是偏下的位置
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _nowPage,
        onTap:(index){
          setState(() {
            _nowPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.hotel_sharp),label: '旅馆'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: '冬天'),
        ],
      )
    );
  }
}