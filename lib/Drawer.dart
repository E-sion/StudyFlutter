import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
      home: DrawerStudy()
  ));
}

// 侧边栏组件
class DrawerStudy extends StatefulWidget{
  const DrawerStudy({super.key});

  @override
  State<DrawerStudy> createState() => _DrawerStudy();
}

class _DrawerStudy extends State<DrawerStudy>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer'),),
      drawer: Drawer(
      // DrawerHeader 组件，包含margin，padding，child，decoration，位置在侧边栏的头部
        child: ListView(
          children:  [
            DrawerHeader(
              decoration: const BoxDecoration(
                // BoxDecoration 指定图片的方式有些特殊复杂

                // CircleAvatar 设置图片为圆形的方式
                ///CircleAvatar(
                /// backgroundImage:
                /// NetworkImage("https://www.itying.com/images/flutter/3.png"),
                //
                  image: DecorationImage(image: NetworkImage('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),fit: BoxFit.cover)),
              child: ListView(
                children: const [
                  Text('我来组成头部'),
                  SizedBox(),

                ],
              ),
            ),
          // 头部以下的位置
          const ListTile( //CircleAvatar 圆形组件的使用方式其一 圆形图标
            title: Text('个人中心'),
            leading: CircleAvatar(child: Icon(Icons.people)),
          ),
          const Divider(),
          ],
        ),
      ),
    );
  }
}