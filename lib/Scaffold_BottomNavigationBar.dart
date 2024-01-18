import 'package:flutter/material.dart';
import 'taps/delete.dart';
import 'taps/home.dart';
import 'taps/photos.dart';
import 'taps/setting.dart';

void main() {
  runApp(Taps());
}

class Taps extends StatefulWidget {
  const Taps({super.key});

  @override
  State<Taps> createState() => _Taps();
}

// 让用户点击底部导航栏之后自动跳转到对应的页面。
// bottomNavigationBar-onTap(获取到用户点击的图标的索引)-list(列表里面存放着不同界面的调用方法)-body(获取到列表里面相对索引位置的数值来调用显示不同的界面)
class _Taps extends State<Taps> {

  int _nowPage = 0; // 用于获取用户点击的图标

  // 把调用其他界面的方法放在列表里面
  List taps = [
    SettingPage(),
    HomePage(),
    PhotosPage(),
    DeletePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Scaffold内置组件BottonmNavigationBar（底部导航栏）学习")),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){ //onTap用于设置图标点击后发生的事件, index 可以是任意变量代表着当前点击的界面序号，()这个位置用于存放onTap获取到的信息
              setState(() {     //setState为重中之重，必须把 _nowPage 赋值写入这里面，否则界面显示内容不会变化
                _nowPage = index;
              });
            },
            currentIndex: _nowPage, // 设置当前选中的图标
            iconSize:26, // 设置图标大小
            fixedColor: Colors.blue, // 底部导航栏点击后显示的颜色
            type: BottomNavigationBarType.fixed, // 让底部的items可以自适应，不设置的话如果item超过数量就会不显示
            items: const [
              // 在底部导航栏里面显示的图标，是列表的格式
              BottomNavigationBarItem(  // 单个item
                  icon: Icon(Icons.settings), // 设置图标
                  label: "设置" // 设置该图标会显示的文本内容
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "主页"
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_a_photo),
                  label: "摄影内容"
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.delete_forever),
                  label: "回收站"
                  ),
            ]),
        body: taps[_nowPage],
      ),
    );
  }
}
